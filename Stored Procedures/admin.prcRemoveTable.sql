CREATE   proc [admin].[prcRemoveTable] @tableName varchar(500)
as
begin
	declare @sql varchar(1000)

	select @sql=BlobPath
	from admin.tables 
	where tablename=@tableName

	select AdditionalTasks=concat('Deactivate the table export in d365 and delete the manifest.cdm.json in the datalake here ',@sql)
	
	delete t
	from admin.TableManifest t
	where exists (select 1
					from admin.tables tt
					where tt.tablename=@tableName
							and tt.BlobPath=t.Path
							and t.FileName like concat(@tableName,'.%')
					)

	delete admin.tablecolumn 
	where tablename=@tableName
	
	delete admin.tables 
	where tablename=@tableName


	set @sql=concat('drop view if exists blobTransFull.',@tableName)
	print @sql
	exec (@sql)

	set @sql=concat('drop view if exists blobTransInc.',@tableName)
	print @sql
	exec (@sql)

	begin try
		set @sql=concat('drop external table blobFull.',@tableName)
		print @sql
		exec (@sql)

		set @sql=concat('drop external table blobInc.',@tableName)
		print @sql
		exec (@sql)

		set @sql=concat('drop synonym dbo.',@tableName)
		print @sql
		exec (@sql)

		--the target db
		set @sql=concat('drop table if exists dbo.',@tableName)
		print @sql
		exec etl.prcExecuteStatement @sql

	end try
	begin catch
		select errorRunning =@sql
	end catch
end
GO
