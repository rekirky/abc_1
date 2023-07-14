CREATE   PROC [admin].[prcTestExternalTables]
					(@fullOrInc char(1)='F')
AS
/*
	When you activate a table, sometimes the CSV files are not created so we need to avoid thes
*/
begin
	SET NOCOUNT ON

	declare 
		@sourceSchema varchar(50)
		,@tableName varchar(500)
		,@sql varchar(max)=''
		,@sqlCreateObject varchar(max)=''
		,@rowNum int =1
		,@iMax int 
		,@error varchar(500)
		,@db varchar(200)=db_name()

 	--log the start
	exec admin.prcLog_CRUD @db,'MetaDataManagement','admin.prcTestExternalTables','Started',null,null

		
	select @sourceSchema =iif( @fullOrInc='I','blobInc','blobFull')

	IF OBJECT_ID(N'tempDB..#') IS NOT NULL
		begin
			drop table #
		end

	select 
		*
		,rowNum=row_number() over(order by TableName)
	into #workToDo
	from admin.Tables 
	where 
		TableJson is not null
		and ((@fullOrInc='F' and EnableFullLoading=1)
			or (@fullOrInc='I' and EnableIncrementalLoading=1)
			)

	select @iMax=count(1)
	FROM #workToDo

	while @rowNum<=@iMax--cursor equivalent
	begin
		SELECT @sql=concat('select top 1 * from ',@sourceSchema,'.',TableName)
				,@tableName=tableName
		FROM #workToDo
		where rowNum=@rowNum
			
		BEGIN TRY

			print @sql
			exec (@sql)  
		
		END TRY
		BEGIN CATCH
 
			update admin.Tables
			set EnableFullLoading		=iif(@fullOrInc='F',0,EnableFullLoading)
				,EnableIncrementalLoading=iif(@fullOrInc='I',0,EnableIncrementalLoading)
				,Error=concat('.Selecting  from External table fails in ',@sourceSchema,'. ',Error)
			where 
				TableName=@tableName

		END CATCH			
			
		set @rowNum=@rowNum+1

	end--loop

	insert admin.log (
					SourceSystem
					,Process
					,Task
					,Status
					,Error
					,AsAt	
					)
	select 
		SourceSystem=db_name()
		,Process	='MetaDataManagement'
		,Task		='admin.prcTestExternalTables'
		,Status		='Error selecting a record'
		,concat(BlobPath,Error,tablename)
		,AsAt		=getdate()
	from admin.Tables
	where error is not null

	--interactive feedback
	select * 
	from admin.Tables
	where error is not null
end
GO
