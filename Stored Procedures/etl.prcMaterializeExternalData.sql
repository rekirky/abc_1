CREATE   PROC [etl].[prcMaterializeExternalData] 
@pBatchType char(1)='F',@pTable varchar(200)=null,@pJustStageThisChangeFeedFileDebugging varchar(200)=null
AS
/*
	Sequence: The following procs must be executed beforehand for all of this to work
		[admin].[prcControllerMetaData]
	
	This proc does a full or incremental load from either the Incremental views or the Full load views

	WARNING
		> LastProcessedChange_DateTime is very unreliable and shouldn't be used at all for any type of watermark
		> DataLakeModified_DateTime is better but files could land in the lake in a bad order so this is also unreliable
		> As per Yammer discussions with Microsoft, this is the most reliable way to get the sequence and LSN should be used as a watermark 
			>instance=ROW_NUMBER() over (partition by recid order by Start_LSN desc,seq_val desc,DataLakeModified_DateTime desc)

	
	See here for details of the contents of the change feed 
	https://learn.microsoft.com/en-us/dynamics365/fin-ops-core/dev-itpro/data-entities/azure-data-lake-change-feeds

*/
BEGIN
	Declare 
			@message varchar(2000)=''
			,@sql varchar(max)
			,@insertSQL varchar(max)
			,@CoreColumnList varchar(max)
			,@tableName varchar(500)
			,@sourceSchema varchar(100)
			,@LastImportedLSN varchar(500)
			--,@MaxLSNinSource varchar(100)
			,@MaxTimeStampInSource datetime2 
			,@incrementalStart datetime=getdate()
			,@lastIncrementalLoadStarted datetime
			,@lastIncrementalLoadStartedSetting varchar(200)='d365ODS_LastIncrementalImportStarted'
			,@TableDefinitionWeak varchar(max)
			,@StoredProcedureCode varchar(max)
			,@StoredProcedureName varchar(500)
			,@filePath varchar(8000)
			,@fileName varchar(2000)
			,@UseStagingTable bit
			,@rowNum int =1
			,@iMax int 
			,@dbName varchar(100)
			,@lineFeed varchar(5)=char(10)
			,@tab varchar(1)=char(9)
			,@setStatement varchar(max)

	BEGIN TRY

		select @dbName=db_name()
		
		--log the start
		exec admin.prcLog_CRUD @dbName,'ETL','etl.prcMaterializeExternalTables','Starting',null,null
		
		--these are views
		select @sourceSchema=iif(@pBatchType='F','blobTransFull','blobTransInc')


		print concat('Starting [etl].[prcMaterializeExternalData] ,@pBatchType=',@pBatchType
						,',@pTable=',@pTable
						,',@pJustStageThisChangeFeedFileDebugging=',@pJustStageThisChangeFeedFileDebugging
						)

		if @pBatchType='F'
		begin
			--==============================================================
			--FULL LOAD--
			set @message=' creating #prcMaterializeExternalData'

			delete admin.TableRowCounts
			where skema='dbo'

			select
					tableName	
					,UseStagingTable
					,CoreColumnList
					,LastImportedLSN=concat('''',isnull(LastImportedLSN,''),'''')--single quotes around it
					--concat(' s.LSN>'''
					--							,isnull(LastImportedLSN,'')
					--							,''''
					--							) 
					--,LastImportTimestamp=concat(' s.DataLakeModified_DateTime>cast('''
					--							,format(isnull(LastImportTimestamp,'1880-01-01'),'yyyy-MM-dd HH:mm:ss.fffffff')--need as string as we are doing dynamic sql
					--							,''' as datetime2) '
					--							) 
					,rowNum				=row_number() over(order by tableName)
			into #prcMaterializeExternalData
			from admin.Tables tt
			--where exists (select 1
			--				from INFORMATION_SCHEMA.TABLES t
			--				where t.TABLE_SCHEMA='dbo'
			--						and t.TABLE_TYPE='BASE TABLE'
			--						and t.TABLE_NAME=tt.TableName
			--				)
			where --reconsider above when just SQL 2022
				EnableFullLoading=1
				and (@pTable is null 
						or tableName=@pTable
					)

			set @message=''

			select @iMax=count(1)
			FROM #prcMaterializeExternalData

			select * 
			from #prcMaterializeExternalData

			while @rowNum<=@iMax--cursor equivalent
			begin

				SELECT	@tableName			=tableName
						,@UseStagingTable	=UseStagingTable
						,@CoreColumnList	=CoreColumnList
						,@LastImportedLSN	=LastImportedLSN--only needed for incremental loading
				FROM #prcMaterializeExternalData
				where rowNum=@rowNum

				exec admin.prcLog_CRUD @dbName,'ETL','dw.prcMaterializeExternalData',@tableName,null,null

				--feedback when running interactively
				select tableName=@tableName		

				set @insertSQL=concat(@tableName
									,' with(tablock) (' 
									--,' (' 
									,@CoreColumnList
									,',LSN) select '
									,@CoreColumnList
									,',LSN from '
									,@sourceSchema
									,'.'
									,@tableName
									--,' order by recid'
									)

				if @UseStagingTable=1
				begin
					--do a double hop due for better performance and load staging first
					set @sql=concat('drop table if exists stage.',@tableName)
					exec (@sql)

					set @sql=concat('select * into stage.',@tableName,' from blobFull.',@tableName)
					exec (@sql)
				end

				set @sql=concat('truncate table dbo.',@tableName)
				--print @sql
				exec (@sql)

				set @sql=concat('insert dbo.',@insertSQL)
				exec (@sql)
				
				-- we can get this from the materialized table and not the external table
				set @sql=concat('update admin.Tables set LastImportedLSN=(select max(LSN) from dbo.'
								,@tableName								
								,' ) where tableName='''
								,@tableName
								,''''
								)
				print @sql
				--exec (@sql) 

				set @rowNum=@rowNum+1

			end--loop	

			exec admin.prcLoadTableRowCounts 'dbo',1

		end--full load

		if @pBatchType='I'
		begin		
			--==============================================================
			--INCREMENTAL LOAD
			select @lastIncrementalLoadStarted=isnull(try_cast(admin.fnGetSetting(@lastIncrementalLoadStartedSetting) as datetime),'1900-01-01')

			print concat('Getting change feed files after ',format(@lastIncrementalLoadStarted,'yyyy-MM-dd hh:mm'))

			set @message=' Creating #incrementalTablesWithChange'

			select 
					filePath		=concat(substring(l.FolderPath,charindex('/ChangeFeed/',l.FolderPath,1),999),'/',l.FileName)
					,l.TableName 
					,tt.CoreColumnList
					,l.AsAt
					,l.FileName
					,LastImportedLSN=concat('''',isnull(tt.LastImportedLSN,''),'''')--single quotes around it
					,rowNum			=row_number() over(order by AsAt Desc)--start with the oldest files first
			into #incrementalTablesWithChange
			from admin.NewDataLakeFilesLog l
			join admin.Tables tt
							on tt.TableName=l.TableName
			where 
				tt.EnableIncrementalLoading=1
				and isnull(l.ProcessingStatus,'')<>'Processed'
				and (@pJustStageThisChangeFeedFileDebugging is null 
						or @pJustStageThisChangeFeedFileDebugging =l.FileName)
				and (@pJustStageThisChangeFeedFileDebugging is not null 
						or l.AsAt>=DATEADD(hour,-1,@lastIncrementalLoadStarted)--go back a bit to be safe
						)
				and (@pTable is null 
						or tt.TableName=@pTable
						)
					
			set @message=''

			select @iMax=count(1)
			FROM #incrementalTablesWithChange

			while @rowNum<=@iMax--cursor equivalent
			begin

				SELECT	@tableName			=tableName
						,@filePath			=filePath
						,@fileName			=FileName
						,@CoreColumnList	=CoreColumnList
						,@LastImportedLSN	=LastImportedLSN--only needed for incremental loading
						,@message			=concat(format(AsAt,'yyyy-MM-dd hh:mm'),'. ',FileName)
				FROM #incrementalTablesWithChange
				where rowNum=@rowNum

				--feedback when running interactively
				select tableName=@tableName	,fileDetails=@message	

				set @sql=concat('drop table if exists stage.',@tableName)
				exec (@sql)

				select @sql=concat('SELECT instance=cast(null as bigint),*  into stage.'
									,@tableName
									,' FROM OPENROWSET(BULK ''',@filePath,''', FORMAT = ''CSV'', DATA_SOURCE = ''d365ADLS'') WITH ('
									,TableDefinitionWeak
									,' )r'
									)
				from admin.Tables
				where TableName=@tableName

				--print @sql
				exec (@sql)

				--get just the records since the last load
				--according to conversations on Yammer with Microsoft, this is the correct way to identify the latest record
				--instance=ROW_NUMBER() over (partition by recid order by start_LSN desc,seq_val desc,DataLakeModified_DateTime desc)

				--do this here as it will be quicker than on the external table
				--if there are multiple records with the same primary key, i.e. RecID, then create an Instance field so we can get the latest version
				select @sql=concat(';with cte as (select
													recid 
													,Start_LSN 
													,Seq_Val
													,DataLakeModified_DateTime
													,Instance=ROW_NUMBER() over (partition by recid 
																					order by Start_LSN DESC
																							,Seq_Val DESC
																							,DataLakeModified_DateTime DESC
																				)
												from stage.',@tableName,'
												)
									update c
									set Instance=cte.Instance
									from stage.',@tableName,' c
									join cte on cte.recid			=c.recid
												and cte.Start_LSN	=c.Start_LSN
												and cte.Seq_Val		=c.Seq_Val
												and cte.DataLakeModified_DateTime=c.DataLakeModified_DateTime'
									)
				exec (@sql)

				--=============================================================================
				--create a stored procedure to make debugging and maintenance easier
				set @StoredProcedureName=concat('stage.prcLoad',@tableName)
				set @StoredProcedureCode=concat('create or alter proc ',@StoredProcedureName,' as ',@lineFeed,'begin ',@lineFeed,'--This proc is automatically created by [etl].[prcMaterializeExternalData]',@lineFeed)

				--delete the deleted records
				set @StoredProcedureCode=concat(@StoredProcedureCode,@lineFeed
											,'DELETE t from dbo.',@tableName,' t ',@lineFeed
											,'where exists ',@lineFeed
															,@tab,'(select 1 from stage.',@tableName,' s ',@lineFeed
															,@tab,' where s.recid=t.recid ',@lineFeed
															,@tab,@tab,'and (s.DML_Action=''DELETE'')',@lineFeed
															,@tab,@tab,'and isnull(t.LSN,'''')<isnull(s.Start_LSN,'''')--delete the older record',@lineFeed
														,@tab,')'
									)
				/*
					An update is really a DELETE and then an INSERT which is the easiest way to do this
					but a reporting query could fire in between the delete and insert and get bad data 
					so we use a merge statement to do this in one hit
				*/
				select @setStatement=STRING_AGG(s,',')
				from (
					select s=concat(value,'=s.',value)
					from string_split(@CoreColumnList,',')
					)t

				set @StoredProcedureCode=concat(@StoredProcedureCode,@lineFeed,@lineFeed
												,'MERGE dbo.',@tableName,' with(tablock) as t',@lineFeed
												,'using (select * from blobTransInc.',@tableName
															,' where DML_Action<>''DELETE'' and Instance=1) as s',@lineFeed
												,'on (s.recid=t.recid)',@lineFeed
												,'when matched then update set ',@lineFeed
												,@tab,@setStatement,@lineFeed
												,'when not matched then insert(',@lineFeed
												,@tab,@CoreColumnList,@lineFeed
												,')',@lineFeed
												,'values (',@lineFeed
												,@CoreColumnList,@lineFeed
												,');',@lineFeed
												)

				set @StoredProcedureCode=concat(@StoredProcedureCode,@lineFeed,'end')

				exec (@StoredProcedureCode)--create the proc but dont run it

				if @pJustStageThisChangeFeedFileDebugging is not null
				begin
					--return the data for debugging
					set @sql=concat('select * from stage.',@tableName)
					exec (@sql)
				end
				else
				begin
					exec admin.prcLog_CRUD @dbName,'ETL',@StoredProcedureName,@tableName,null,null

					set @sql=concat('exec ',@StoredProcedureName)
					exec (@sql)

					set @sql=concat('update admin.NewDataLakeFilesLog set ProcessingStatus=''Processed'' where FileName=''',@fileName
										,''' and tableName=''',@tableName,'''')
					exec (@sql)

					set @sql=concat('update admin.Tables set LastImportedLSN=(Select max(Start_LSN) from stage.',@tableName,')'
									,' where TableName=''',@tableName,''''
									)
					exec (@sql)   
					
			/*
					--delete updated or deleted columns since the last import
					set @sql=concat('delete t from dbo.'
										,@tableName
										,' t where exists (select 1 from stage.',@tableName
															,' s where s.recid=t.recid 
																and (s.DML_Action like ''%update%'' or s.DML_Action=''DELETE'' or (DML_Action=''Insert'' and Instance=1))
															) '
										,'and isnull(t.LSN,'''')<(Select max(Start_LSN) from stage.',@tableName,')'
										)
					--print @sql
					exec (@sql)

					set @sql=concat('insert dbo.'
										,@tableName
										--,' with(tablock) (' 
										,' (' 
										,@CoreColumnList
										,') select '
										,@CoreColumnList
										,' from blobTransInc.'
										,@tableName
										,' s where DML_Action<>''DELETE'' and Instance=1 order by recid'-- order by the target clustered index to reduce fragmentation
										)
					print @sql
					exec (@sql)   
				*/
	
				end--@pJustStageThisChangeFeedFileDebugging

				set @rowNum=@rowNum+1
			end--loop			

			if @pTable is null and @pJustStageThisChangeFeedFileDebugging is null
			begin
				--not debug mode so update the settings
				update admin.settings
				set Value =format(@lastIncrementalLoadStarted,'yyyy-MM-dd hh:mm:ss')
				where SettingPK=@lastIncrementalLoadStartedSetting
			end
		end--incremental

		--set @message=' setting security '

		checkpoint
		
		--implement table level security that gets wiped out each time
		grant select on dbo.DimensionAttributeValueSet to [OH_BasicReadOnly]
		grant select on dbo.DimensionFinancialTag to [OH_BasicReadOnly]
		grant select on dbo.Dataarea to [OH_BasicReadOnly]
		grant select on dbo.DimensionAttributeValueSet to [OH_BasicReadOnly]
		grant select on dbo.DimensionFinancialTag to [OH_BasicReadOnly]
		grant select on dbo.DimensionAttributeValueCombination to [OH_BasicReadOnly]
		grant select on dbo.MainAccount to [OH_BasicReadOnly]
		grant select on dbo.MainAccountCategory to [OH_BasicReadOnly]
		grant select on dbo.SAB_ConsLotStructureElement to [OH_BasicReadOnly]
		grant select on dbo.Sab_ConsCostCategory to [OH_BasicReadOnly]
		grant select on dbo.Sab_ConsRevenueCategory to [OH_BasicReadOnly]
		grant select on dbo.SAB_CONSFINANCIALINSTANCE to [OH_BasicReadOnly]
		grant select on dbo.SAB_ConsSalesDiscountType to [OH_BasicReadOnly]
		grant select on dbo.Sab_ConsMaReportCode to [OH_BasicReadOnly]
		grant select on dbo.Sab_ConsMaReportCodeCategory to [OH_BasicReadOnly]
		grant select on dbo.Sab_ConsAttributeTranslation to [OH_BasicReadOnly]
		grant select on dbo.Sab_ConsAttributevalue to [OH_BasicReadOnly]
		grant select on dbo.Sab_ConsAttribute to [OH_BasicReadOnly]
		grant select on dbo.Sab_ConsEntityAttributeLookup to [OH_BasicReadOnly]
		grant select on dbo.Sab_ConsLotStructureAttributeGroup to [OH_BasicReadOnly]
		grant select on dbo.Sab_ConsFinancialPostingGroup to [OH_BasicReadOnly]
		grant select on dbo.Sab_ConsInstancevalue to [OH_BasicReadOnly]
		grant select on dbo.Sab_ConsColorScheme to [OH_BasicReadOnly]
		grant select on dbo.Sab_ConsValue to [OH_BasicReadOnly]

		grant select on dbo.Sab_ConsCustInvoiceTable to [OH_ProductionPlanning]
		grant select on dbo.Sab_ConsVendInvoiceTable to [OH_ProductionPlanning]
		grant select on dbo.Sab_ConsLotTable to [OH_ProductionPlanning]
		grant select on dbo.dirPartyLocation  to [OH_ProductionPlanning]
		grant select on dbo.sab_consMaReportCode  to [OH_ProductionPlanning]
		grant select on dbo.sab_consMaReportCodeCategory  to [OH_ProductionPlanning]
		grant select on dbo.logisticsPostalAddress  to [OH_ProductionPlanning]
		grant select on dbo.logisticsLocation  to [OH_ProductionPlanning]
		
		grant select on dbo.OH_MainAccountTags to OH_MasterData
	
		grant select on dbo.SAB_ConsLotStructureElement to Eliant
		grant select on dbo.Sab_ConsLotTable to Eliant
		grant select on dbo.SAB_ConsCSSuspendReason to Eliant
		grant select on dbo.SAB_ConsCSRequestSource to Eliant
		grant select on dbo.SAB_ConsCSRequestCategory to Eliant
		grant select on dbo.SAB_ConsCSContactMethod to Eliant
		grant select on dbo.SAB_ConsCSCloseReason to Eliant
		grant select on dbo.HcmWorker to Eliant
		grant select on dbo.DirPartyTable to Eliant
		grant select on dbo.DirPartyLocation to Eliant
		grant select on dbo.Sab_ConsCsRequest to Eliant
		grant select on dbo.Dataarea to Eliant
		grant select on dbo.DimensionFinancialTag to Eliant
		grant select on dbo.DimensionAttributeValueSet to Eliant
		grant select on dbo.Sab_ConsFinancialInstance to Eliant
		grant select on dbo.SAB_ConsSalesDiscountType to Eliant
		grant select on dbo.SAB_ConsLotOptionDetails to Eliant
		grant select on dbo.LogisticsPostalAddress to Eliant
		grant select on dbo.LogisticsLocation to Eliant
		grant select on dbo.Sab_ConsRevenueCategory to Eliant
		grant select on dbo.Sab_ConsCostCategory to Eliant
		grant select on dbo.Sab_ConsMaReportCode to Eliant
		grant select on dbo.Sab_ConsMaReportCodeCategory to Eliant  
  
		delete dbo.GlobalAddressBook

		INSERT dbo.GlobalAddressBook
				   (Name
				   ,Email
				   ,Mobile
				   ,Phone
				   ,Department
				   ,Title
				   ,ShowInAddressBook
				   )
		select 
			Name
			,mail
			,Mobile
			,telephonenumber
			,Department
			,Title
			,ShowInAddressBook
		from ext.GlobalAddressBook
		

	END TRY
	BEGIN CATCH
 
		SET @message=concat('prcMaterializeExternalData '
							,isnull('for '+@tableName,@message)
						,' '
						,cast(ERROR_MESSAGE() as varchar(2000))
						)

		print @sql
		print @insertSQL
		print @message
 
		--log the error
		exec admin.prcLog_CRUD @dbName,'ETL','dw.prcMaterializeExternalData','Error',@message,null
 
		--bubble the error so that the caller will fail
		RAISERROR (@message,12,100)
	END CATCH

END
GO
