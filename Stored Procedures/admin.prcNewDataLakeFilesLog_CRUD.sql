create   proc [admin].[prcNewDataLakeFilesLog_CRUD] @FolderPath varchar(1000),@FileName varchar(500)
as
begin

	insert admin.NewDataLakeFilesLog (
					AsAt
					,FolderPath 
					,FileName 
					)
	select 
		getdate()
		,@FolderPath
		,@FileName
	
end
GO
