CREATE       proc [admin].[prcCreateExternalTableDefinitions] @fullOrInc char(1)='F', @testAfterTableCreation bit =0
as
/*
	Sequence: Run the admin.prcGetMetaData before running this

	Note that the blob file locations are case sensitive

	The core part of the schema for both incremental and full loads is using the full schema definitio
*/
begin

	declare @datalakeRoot varchar(500)
			,@targetSchema varchar(10)
			,@sql varchar(max)
			,@firstColumnDefs varchar(500)
			,@firstColumnCountToIgnoreIndex int=4
			,@tableName varchar(500)
			,@prefix varchar(500)
			,@sufffix varchar(1000)
			,@ColumnName varchar(300)
			,@DataTypeWeak varchar(50)
			,@lineFeed varchar(5)=char(10)
			,@error varchar(500)
			,@db varchar(200)=db_name()
	
	set nocount on

	BEGIN TRY
 		--log the start
		exec admin.prcLog_CRUD @db,'MetaDataManagement','admin.prcCreateExternalTableDefinitions','Started',null,null

		--do all of the settings
		if @fullOrInc='I'
		begin
			--Incemental load
			select 
				@firstColumnDefs ='LastProcessedChange_DateTime varchar(50),DataLakeModified_DateTime varchar(50),Start_LSN varchar(50),End_LSN varchar(50),DML_Action varchar(100),Seq_Val varchar(50),Update_Mask varchar(400)'--leave off the comma at the end
				--,@targetSchema ='blobInc'
		end
		else
		begin
			--Full load
			select
				@firstColumnDefs ='_SysRowId varchar(60),LSN varchar(60),LastProcessedChange_DateTime varchar(50),DataLakeModified_DateTime varchar(50)'--leave off the comma at the end
				,@targetSchema ='blobFull'
		end

		select	@datalakeRoot=admin.fnGetSetting('DataLakeRoot')
	
		--the order of the columns is critical so use a cursor/loop instead of STRING_AGG to create the column list
		DECLARE cursTables CURSOR FAST_FORWARD FOR
			select 
				TableName
				,prefix	=concat('create external table ',@targetSchema,'.',TableName,'(',@firstColumnDefs)
				,suffix	=--iif(@fullOrInc='I'
							--,concat(') WITH (DATA_SOURCE = d365ADLS,LOCATION = ''ChangeFeed/'
							--		,TableName
							--		,'/*.csv'',FILE_FORMAT = csvQuotedText)'
							--		)
							concat(') WITH (DATA_SOURCE = d365ADLS,LOCATION = '''
									,BlobPath
									,TableName
									,'/*.csv'',FILE_FORMAT = csvQuotedText)'
									)
							--)
			from  admin.Tables
			where 
					isnull(HasCustomTransformationView,0) <>1

		OPEN cursTables
		FETCH NEXT FROM cursTables
		INTO	@tableName	
				,@prefix	
				,@sufffix	

		WHILE @@FETCH_STATUS = 0  
		BEGIN 

			IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE table_name=@tableName and TABLE_SCHEMA=@targetSchema)
			begin
				set @sql=concat('drop external table ',@targetSchema,'.',@tableName)
				--print @sql
				exec (@sql)
			end

			set @sql=''

				--column definitions
				DECLARE cursColumns CURSOR FAST_FORWARD FOR
					SELECT	ColumnName
							,DataTypeWeak
					FROM admin.TableColumn
					where tableName=@tableName
							and ColumnIndex>=@firstColumnCountToIgnoreIndex
					order by 
							ColumnIndex--this is critical !

					OPEN cursColumns
					FETCH NEXT FROM cursColumns INTO
							@ColumnName
							,@DataTypeWeak

					WHILE @@FETCH_STATUS = 0  
					BEGIN 
						--do a loop as a string_agg will max out at 8000 characters
						set @sql=concat(@sql
											,',['
											,@ColumnName
											,'] '
											,@DataTypeWeak
											,@lineFeed
											)							
						FETCH NEXT FROM cursColumns INTO		
							@ColumnName
							,@DataTypeWeak

					END

					CLOSE cursColumns
					DEALLOCATE cursColumns	

			update admin.Tables
			set TableDefinitionWeak=concat(@firstColumnDefs,@sql)
			where tableName=@tableName

			print @tableName

			if @fullOrInc='F'
			begin--we only create external tables for the full load pattern
				set @sql=concat(@prefix
								,@sql
								,@sufffix
								)
				--print @sql
				exec (@sql)   
			end

			if @testAfterTableCreation=1
			begin
				set @sql=concat('select top 1 * from ',@targetSchema,'.',@tableName)
				exec (@sql)   
			end
					
			
		FETCH NEXT FROM cursTables
		INTO	@tableName	
				,@prefix	
				,@sufffix	
		END

		CLOSE cursTables
		DEALLOCATE cursTables
	
	END TRY
	BEGIN CATCH
 
		print @sql

		SET @error='prcCreateExternalTableDefinitions: '+cast(ERROR_MESSAGE() as varchar(200))
 
		--log the error
		exec admin.prcLog_CRUD @db,'MetaDataManagement','admin.prcCreateExternalTableDefinitions','Error',@error,null
 
		--bubble the error so that the caller will fail
		RAISERROR (@error,12,100)
	END CATCH
end
GO
GO
GO
