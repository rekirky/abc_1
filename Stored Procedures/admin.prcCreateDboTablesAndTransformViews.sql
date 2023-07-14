CREATE   PROC [admin].[prcCreateDboTablesAndTransformViews]
					(@fullOrInc char(1)='F',@pCreateTables bit=0,@pDeleteIfExists bit=0 ,@pTable varchar(200)=null)
AS
/*
	Sequence: Run this proc after [admin].[prcGetMetaData] and [admin].[prcCreateExternalTableDefinitions]
	
	Create transformation views for both incremental and full load paths.
	Optionally create the final target tables

	Cursors are not used here as they crash disgracefully
	
	to do: repoint incremental transforms to the stage tables
*/
begin
	SET NOCOUNT ON

	declare 
		@sourceSchema varchar(50)
		,@targetSchema varchar(50)
		,@coreColumnList varchar(max)
		,@tableName varchar(500)
		,@sql varchar(max)=''
		,@createViewSQL varchar(max)
		,@lineFeed varchar(5)=char(10)
		,@error varchar(500)
		,@db varchar(200)=db_name()
		,@rowNum int =1
		,@iMax int 
		,@UseStagingTable bit

	BEGIN TRY
 		--log the start
		exec admin.prcLog_CRUD @db,'MetaDataManagement','admin.prcCreateDboTablesAndTransformViews','Started',null,null

		--some tables we stage b/c they are large and have enums which hang if attempting to do direct from the lake
		update admin.Tables 
		set UseStagingTable =0

		update t
		set UseStagingTable =1
		from admin.Tables  t
		where exists (
					select * 
					from admin.settings s
					cross apply string_split(s.value,',') ss
					where s.SettingPK='StageTheseD365Tables'
							and t.TableName=ss.value
					)

		if @fullOrInc='I'--incremental
		begin
			select @sourceSchema ='stage'
					,@targetSchema ='blobTransInc'
		end
		else
		begin
			--full
			select @sourceSchema ='blobFull'
					,@targetSchema ='blobTransFull'
		end

		--check to ensure that there are no messed up transforms
		select * 
		into #ColumnTransformations
		from etl.ColumnTransformations 
		where enabled=1
				and TransformationType not in ('boolean' ,'enum')
				and nullif(TransformationDetails,'') is null
		order by 1

		if exists (select top 1 * from #ColumnTransformations)
		begin
			select * from #ColumnTransformations

			RAISERROR ('There are blank transformations in etl.ColumnTransformations',12,100)
			return
		end

		--=================================================================================================
		--Get the data to work with
		drop table if exists #prcCreateDboTablesAndTransformViews

		--create the transformation view sql
		select
				TableName
				,UseStagingTable
				,rowNum			=row_number() over(order by TableName)
				,createViewSQL	=concat('create or alter view ',@targetSchema,'.',TableName+' as select ',@lineFeed
										,iif(@fullOrInc='I','DML_Action,Start_LSN,Seq_Val,Instance,','LSN,')
										,STRING_AGG(colDef ,',')
										,' from ',@sourceSchema,'.',TableName,' t'
										)
		into #prcCreateDboTablesAndTransformViews
		from
			(select 
				TableName
				,UseStagingTable
				,columnName
				,colDef=cast(concat(columnName
									,case 
										when ColumnName in ('[LastProcessedChange_DateTime]','[DataLakeModified_DateTime]')
														then concat('=cast(',columnName,' as datetime2(0))')
										when TransformationType='sql'
														then '='+TransformationDetails
										when TransformationType='Boolean' or (TransformationDetails in ('NoYes','boolean') and TransformationType='enum')
											then '=case when '+columnName+'=1 then ''Yes'' else ''No'' end '
													+','+ColumnNameUnquoted+'Flag=cast('+columnName+' as bit)'--add an extra column for the integer
										when TransformationType='enum'
											then '=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='''+TransformationDetails+''' and e.EnumCode=t.'+columnName+') '
													+','+ColumnNameUnquoted+'EnumID='+columnName--add an extra column for the enum integer
										when TransformationType='DATE' or DataTypeStrong like 'date%'
											then '=cast('+
												case 
													when TransformationDetails is null
														then columnName+' as date)'
													
													when TransformationDetails like '%max%'
														then 'case when '+columnName+' < cast(''1901-01-01'' as date) or '+columnName+' is null then ''9000-01-01'' else '+columnName+' end'
																+' as date)'
												
													when TransformationDetails like '%SetToNull%'
														then 'case when '+columnName+' < cast(''1901-01-01'' as date) then null else '+columnName+' end'
																+' as date)'
												
													when TransformationDetails like '%UTC2LocalDate%'
															then 'case when '+columnName+' < cast(''1901-01-01'' as date) then null else dbo.fnConvertUtcStringToLocalDate('+columnName+') end'
																+' as date)'

													when TransformationDetails like '%UTC2LocalDateTime%'
															then 'case when '+columnName+' < cast(''1901-01-01'' as date) then null else dbo.fnConvertUtcStringToLocalTime('+columnName+') end'
													else ''
												end
										when DataTypeStrong is not null and DataTypeStrong <>isnull(DataTypeWeak ,'')
													then concat('=cast(',columnName,' as ',DataTypeStrong,')')
										else ''
										end
									,@lineFeed
									) as varchar(max))
			from 
				(select top 100 percent--attempt to get the columns in the correct order for the STRING_AGG
					TableName
					,UseStagingTable
					,ColumnName				=QUOTENAME(columnName)
					,ColumnNameUnquoted		=ColumnName
					,ColumnIndex
					,DataTypeStrong
					,DataTypeWeak
					,TransformationType		=iif(EnumSet is not null,'enum',TransformationType)
					,TransformationDetails	=isnull(EnumSet,TransformationDetails)
				from	(select
							tc.TableName
							,t.UseStagingTable
							,tc.ColumnName
							,tc.ColumnIndex
							,tc.DataTypeStrong
							,tc.DataTypeWeak
							,tx.TransformationType
							,tx.TransformationDetails								
							,EnumSet=(select top 1 e.EnumSet
										from dbo.Enum e 
										where e.EnumSet=tc.d365Class
										)
						from admin.TableColumn tc
						join admin.Tables t
											on t.TableName=tc.TableName
						left join etl.ColumnTransformations tx 
														on tx.tableName=tc.TableName
														and tx.columnName=tc.columnName
														and tx.Enabled=1
						where 
							((@fullOrInc ='F' and t.EnableFullLoading=1)
								or (@fullOrInc ='I' and t.EnableIncrementalLoading=1)
							)
							and isnull(t.HasCustomTransformationView,0) <>1
							and tc.columnName not in ('_SysRowId','LSN','LastProcessedChange_DateTime')
							and (@pTable is null or t.TableName=@pTable)
						)nest1
				order by 
						1,3
				)nest2
			where	
					(@fullOrInc ='I'
						or
						exists (select 1 from INFORMATION_SCHEMA.TABLES t
								where	t.TABLE_NAME=nest2.TableName
										and t.TABLE_SCHEMA=@sourceSchema
								)
						)
			)nest1
		group by
				TableName
				,UseStagingTable

		select @iMax=count(1)
		FROM #prcCreateDboTablesAndTransformViews

		--=================================================================================================
		--loop through the work
		while @rowNum<=@iMax--cursor equivalent
		begin

			SELECT	@tableName			=TableName
					,@createViewSQL		=createViewSQL
					,@UseStagingTable	=UseStagingTable
					,@sql				=''
			FROM #prcCreateDboTablesAndTransformViews
			where rowNum=@rowNum

			--====================================================================
			--TRANSFORMATION VIEWS
			--====================================================================
			if @fullOrInc='I'
			begin	--create staging tables that the Incremental Transform views will sit on
				set @sql=concat('drop table if exists stage.',@tableName)
				exec (@sql)   

				select @sql=concat('create table stage.',@tableName,' (Instance bigint,',TableDefinitionWeak,')')
				from admin.Tables
				where TableName=@tableName
				
				print concat('Creating stage.',@tableName)

				exec (@sql)   
			end

			if @pDeleteIfExists=1
			begin
				set @sql='drop view if exists '+@targetSchema+'.'+@tableName
				--print @sql
				exec (@sql)   
			end

			if nullif(@createViewSQL,'') is null
			begin
				--bubble the error so that the caller will fail
				set @tableName=@tableName+': blank create view statement for this table'
				RAISERROR (@tableName,12,100)

				select ErrorBlankSQL=@tableName
			end
			else
			begin
				print concat('creating view ',@targetSchema,'.',@tableName)
				exec (@createViewSQL)   --create the view
			end 

			--====================================================================
			--TABLES
			--====================================================================
			--create tables first as some views depend on the stage table
			if @pCreateTables=1 and @fullOrInc='F'
			begin				
				if @pDeleteIfExists=1
				begin
					print concat('dropping table dbo and stage.',@tableName)
					
					set @sql=concat('drop table if exists dbo.',@tableName)
					
					exec (@sql)

					set @sql=concat('drop table if exists stage.',@tableName)
					
					exec (@sql)

				end
				/*
				set @sql=concat('create table dbo.',@tableName,'(')

				delete @columns

				insert @columns(
						ColumnName	
						,ColSequence
						,colDef
						)
				select 
						ColumnName	=quotename(COLUMN_NAME )
						,row_number() over (order by ORDINAL_POSITION)
						,colDef		=concat(
												quotename(COLUMN_NAME)
												,' '
												,case	
														when DATA_TYPE='datetime2' 
																				then concat(DATA_TYPE,'(',DATETIME_PRECISION,')')
														when (CHARACTER_MAXIMUM_LENGTH is null and NUMERIC_PRECISION is null) 
																or DATA_TYPE like '%int'
																or DATA_TYPE ='float'
																				then DATA_TYPE
														when DATA_TYPE like '%varchar' 
																				then concat('varchar(', iif(CHARACTER_MAXIMUM_LENGTH=-1,'max',cast(CHARACTER_MAXIMUM_LENGTH as varchar)) ,')')
														else concat(DATA_TYPE,'(',NUMERIC_PRECISION,',',NUMERIC_SCALE,')')
													end
												,@lineFeed
												) 
				from INFORMATION_SCHEMA.COLUMNS 
				where TABLE_NAME=@tableName
					and TABLE_SCHEMA=@targetSchema--the transform view
					and COLUMN_NAME<>'LSN'--handle this separately
				order by ORDINAL_POSITION
				
				--the STRING_AGG is quirkly so do this in a loop
				select @ColSequence_max=count(1)
				FROM @columns

				--get the first column separately due to adding commas
				select @sql				=concat('create table dbo.',@tableName,'(',colDef)
						,@coreColumnList=ColumnName
				FROM @columns
				where ColSequence=1	

				set @ColSequence=2--start with column 2 as we already have column 1 above

				while @ColSequence<=@ColSequence_max--cursor equivalent
				begin
					select @sql			=concat(@sql,',',colDef)
							,@coreColumnList=concat(@coreColumnList,',',ColumnName)
					FROM @columns
					where ColSequence=@ColSequence			
			
					set @ColSequence=@ColSequence+1

				end--loop
				*/
				
				--get the table schema from the transformation view
				select @sql=concat('create table dbo.'
									,@tableName
									,'('
									,STRING_AGG(colDef,',')
									)
						,@coreColumnList=STRING_AGG(ColumnName,',')
				from
					(select top 100 percent
							ColumnName	=cast(quotename(COLUMN_NAME )as varchar(max))--this is for the string_agg to not max out
							,colDef		=cast(concat(
													quotename(COLUMN_NAME)
													,' '
													,case	
															when DATA_TYPE='datetime2' 
																					then concat(DATA_TYPE,'(',DATETIME_PRECISION,')')
															when (CHARACTER_MAXIMUM_LENGTH is null and NUMERIC_PRECISION is null) 
																	or DATA_TYPE like '%int'
																	or DATA_TYPE ='float'
																					then DATA_TYPE
															when DATA_TYPE like '%varchar' 
																					then concat('varchar(', iif(CHARACTER_MAXIMUM_LENGTH=-1,'max',cast(CHARACTER_MAXIMUM_LENGTH as varchar)) ,')')
															else concat(DATA_TYPE,'(',NUMERIC_PRECISION,',',NUMERIC_SCALE,')')
														end
													,@lineFeed
													) 
												as varchar(max))
					from INFORMATION_SCHEMA.COLUMNS 
					where TABLE_NAME=@tableName
						and TABLE_SCHEMA=@targetSchema--the transform view
						and COLUMN_NAME<>'LSN'--handle this separately
					order by ORDINAL_POSITION
					)nest1
					
				--select targetSchema=@targetSchema,tableName=@tableName,coreColumnList=@coreColumnList

				update admin.Tables
				set CoreColumnList=@coreColumnList
				where 
					TableName=@tableName

				set @sql=concat(@sql,',LSN varchar(60))')

				print concat('creating table dbo.',@tableName)

				exec (@sql)

				if @pTable is not null
				begin
					--debugging
					select tableName=@tableName,createViewSQL=@createViewSQL,UseStagingTable=@UseStagingTable,@sql				
				end

				if @UseStagingTable =1
				begin--create the staging table if needed
					set @sql=concat('select * into stage.',@tableName,' from blobFull.',@tableName,' where 1=0')
					exec (@sql)

					--change the view to draw from the staging table		
					set @createViewSQL=replace(@createViewSQL
												,concat(' from ',@sourceSchema,'.')
												,' from stage.')
					exec (@createViewSQL)
				end

				--create a primary key needed for fast incremental data loading
				if exists (select 1
							from INFORMATION_SCHEMA.COLUMNS 
							where	TABLE_NAME=@tableName
									and TABLE_SCHEMA=@targetSchema--the transform view
									and COLUMN_NAME='recid'
								)
				begin
					set @sql=concat('ALTER TABLE dbo.'
									,@tableName
									,' alter column RecID bigint not null'--needs to be not null for a primary key
									)
					exec (@sql)	

					if @UseStagingTable =1
					begin--create the staging table if needed
						set @sql=replace(@sql,'alter table dbo.','alter table stage.')
						exec (@sql)
					end

					set @sql=concat('ALTER TABLE dbo.'
									,@tableName
									,' ADD CONSTRAINT PK_'
									,@tableName
									,'_RecID PRIMARY KEY CLUSTERED (RecID)'
									)
					exec (@sql)	

					--if @UseStagingTable =1
					--begin--create the staging table if needed
					--	set @sql=replace(@sql,'ALTER TABLE dbo.','ALTER TABLE stage.')
					--	set @sql=replace(@sql,concat('CONSTRAINT PK_',@tableName),concat('CONSTRAINT PK_stage',@tableName))
					--	--exec (@sql)
					--end
				end--CREATE TABLE
				--====================================================================

				set @sql=null

				--create any other indexes
				select @sql=createStatement
				from admin.IndexDefinitions id
				where tableName=@tableName
						and (IsClustered=0
								or not exists (select 1--dont attempt to create another clustered index
												from sys.tables t
												join sys.indexes i 
																on t.object_id=i.object_id
												where t.name=id.tableName
														and i.type=1--clustered
												)
							)

				if @sql is not null
				begin
					exec (@sql)	
				end

			end
			--====================================================================
			--END TABLES
			--====================================================================

			--if @testTheViewCreated=1
			--begin
			--	set @sql='select top 1 * from '+@targetSchema+'.'+@tableName
			--	print @sql
			--	exec (@sql)   
			--end

			set @rowNum=@rowNum+1

		end--loop

	END TRY
	BEGIN CATCH
		SET @error='prcCreateDboTablesAndTransformViews: '+cast(ERROR_MESSAGE() as varchar(200))
 
		print @createViewSQL
		print @sql
		print @error

		--log the error
		exec admin.prcLog_CRUD @db,'MetaDataManagement','admin.prcCreateDboTablesAndTransformViews','Error',@error,null
 
		--bubble the error so that the caller will fail
		RAISERROR (@error,12,100)
	END CATCH
end
GO
