CREATE    proc [admin].[prcCreateSynonyms]
as
begin
	declare @sql varchar(1000)
			,@environment varchar(20)=admin.fnGetEnvironmentSuffix()
			,@tablename nvarchar(300) 
			,@syn nvarchar(300) 
			,@error varchar(200)

	BEGIN TRY

		exec admin.prcLog_CRUD 'Database','Creating synonyms','admin.prcCreateSynonyms','Starting...'

		--rare cases
		set @sql='drop synonym if exists d365.sys_objects';exec (@sql)
		set @sql='create synonym d365.sys_objects for d365Replica'+@environment+'.sys.objects';exec (@sql)
		
		set @sql='drop synonym if exists d365.sys_schemas';exec (@sql)		
		set @sql='create synonym d365.sys_schemas for d365Replica'+@environment+'.sys.schemas';exec (@sql)	
	
		set @sql='drop synonym if exists d365.sys_sql_modules';exec (@sql)
		set @sql='create synonym d365.sys_sql_modules for d365Replica'+@environment+'.sys.sql_modules';exec (@sql)	

		set @sql='drop synonym if exists d365.sys_indexes';exec (@sql)
		set @sql='create synonym d365.sys_indexes for d365Replica'+@environment+'.sys.indexes';exec (@sql)	

		set @sql='drop synonym if exists d365.prcDefragOrRebuildAllIndexes';exec (@sql)
		set @sql='create synonym d365.prcDefragOrRebuildAllIndexes for d365Replica'+@environment+'.admin.prcDefragOrRebuildAllIndexes';exec (@sql)	

		set @sql='drop synonym if exists d365.INFORMATION_SCHEMA_TABLES';exec (@sql)
		set @sql='create synonym d365.INFORMATION_SCHEMA_TABLES for d365Replica'+@environment+'.INFORMATION_SCHEMA.Tables';exec (@sql)	

		set @sql='drop synonym if exists d365.INFORMATION_SCHEMA_COLUMNS';exec (@sql)
		set @sql='create synonym d365.INFORMATION_SCHEMA_COLUMNS for d365Replica'+@environment+'.INFORMATION_SCHEMA.COLUMNS';exec (@sql)	

		set @sql='drop synonym if exists d365.admin_prcDefragOrRebuildAllIndexes';exec (@sql)
		set @sql='create synonym d365.admin_prcDefragOrRebuildAllIndexes for d365Replica'+@environment+'.admin.prcDefragOrRebuildAllIndexes';exec (@sql)	

		--get the bulk
		drop table if exists ##d365Replica

		set @sql='select syn=table_name,table_name=TABLE_SCHEMA+''.''+table_name into ##d365Replica from d365Replica'+@environment
				+'.INFORMATION_SCHEMA.TABLES where TABLE_SCHEMA in (''health'',''supporting'')'

		exec (@sql)

		DECLARE curs CURSOR FAST_FORWARD FOR
		SELECT syn,table_name
		FROM ##d365Replica 

		OPEN curs;
		FETCH NEXT FROM curs
			INTO @syn,@tablename

		-- Loop through the table and create the syns based on the DB we are in
		WHILE @@FETCH_STATUS = 0  
			BEGIN
			
				set @sql ='drop synonym if exists Ext.'+@syn
				exec (@sql)

				set @sql ='create synonym ext.'+@syn+' for d365Replica'+@environment+'.'+@tablename
				print @sql
				exec (@sql)
        
				FETCH NEXT FROM curs
					INTO @syn,@tablename
			END

		CLOSE curs;
		DEALLOCATE curs;

	END TRY
	BEGIN CATCH
		
		set @error='prcCreateSynonyms: '+cast(ERROR_MESSAGE() as varchar(200))

		--log the error
		exec admin.prcLog_CRUD 'Database','Creating Synonyms','admin.prcCreateSynonyms','Finished with error',@error

		--bubble the error so that the caller will fail
		RAISERROR (@error,12,100)

	END CATCH
end
GO
