CREATE   proc [admin].[prcMetaDataTranslate]
as
/*
	Execute this proc everyday else there will be a failure trying to read from the files

	You must run [admin].[prcGetMetaData] first

*/
begin

	declare @datalakeRoot varchar(500)
			,@sql varchar(8000)
			,@error varchar(500)
			,@i int =0
			,@rowNum int =1
			,@iMax int 
			,@entityFileSuffix varchar(50)
			,@blobFile varchar(1000)
			,@tableName varchar(500)
			,@executionTime datetime2(0)=getdate()
			,@db varchar(200)=db_name()

	declare @entities table(rowNum int,TableName varchar(300),BlobFile varchar(4000))

	set nocount on

	BEGIN TRY
 		--log the start
		exec admin.prcLog_CRUD @db,'MetaDataManagement','admin.prcMetaDataTranslate','Started',null,null

		select @datalakeRoot=admin.fnGetSetting('DataLakeRoot')
		select @entityFileSuffix=admin.fnGetSetting('DataLakeEntityMetaDataFileExtension')
	
		select datalakeRoot=@datalakeRoot,entityFileSuffix=@entityFileSuffix

		--=========================================================================================
		--ENTITIES
		--=========================================================================================
		--add any new tables
		;with cte as
			(select	path
					,entityName
			from admin.TableManifest tf
			cross apply openjson(ManifestJSON)
								with(entities NVARCHAR(MAX) '$.entities' AS JSON) as js
			outer apply openjson(entities)
							with(entityName varchar(500) N'$.entityName'
							) as r
			where	ISJSON(EntityJSON)>0
					and EntityJSON is not null
			)
		insert admin.Tables(BlobPath,TableName)
		select
			Path
			,entityName
		from cte 
		where 
				not exists (Select 1 
								from admin.Tables t 
								where t.TableName=cte.entityName
							)

		update admin.Tables
		set MetaDataFetched = null
			,TableJsonPreviously=TableJson

		insert admin.TableColumnHistory
					(
					AsAt
					,TableName
					,ColumnName
					,ColumnIndex
					,DisplayName
					,DataTypeWeak
					,DataTypeStrong
					,d365Type
					,d365Class
					)
		select
			@executionTime
			,TableName
			,ColumnName
			,ColumnIndex
			,DisplayName
			,DataTypeWeak
			,DataTypeStrong
			,d365Type
			,d365Class
		from admin.TableColumn

		--remove old data
		delete admin.TableColumnHistory
		where AsAt<dateadd(day,-14,getdate())

		--get the JSON definition for each table
		insert @entities
		SELECT 
			rowNum=row_number() over(order by BlobPath,TableName)
			,TableName
			,BlobFile=concat(@datalakeRoot,BlobPath,TableName,@entityFileSuffix)
		FROM admin.Tables
		where MetaDataFetched is null

		select @iMax=count(1)
		FROM @entities

		while @rowNum<=@iMax--cursor equivalent
		begin
			
			begin try
				select @sql=concat('update admin.Tables set MetaDataFetched=GetDate(),TableJson=(select top 1 BulkColumn FROM OPENROWSET(BULK '''
								,BlobFile
								,''',DATA_SOURCE = ''d365JSON'', single_clob) d) where TableName='''
								,tableName
								,'''')

				FROM @entities
				where rowNum=@rowNum

				--print @sql
				exec (@sql)
			end try
			begin catch
				--ignore the error but show as a warning
				set @error='Error ignored: '+cast(ERROR_MESSAGE() as varchar(500))
				print @error

			end catch
			set @rowNum=@rowNum+1

		end--loop

		--the metadata is application like and not database like
		insert admin.DataType(d365Class ,d365DataTypeBase )
		select
			dataTypeName
			,extendsDataType
		from
			(
			select distinct 
				def.dataTypeName
				,def.extendsDataType
			FROM admin.Tables t
			cross apply openjson(t.TableJson)
								with(definitions NVARCHAR(MAX) '$.definitions' AS JSON) as tbl
			cross apply openjson(tbl.definitions)
								with(dataTypeName varchar(500) N'$.dataTypeName'
									,extendsDataType varchar(500) N'$.extendsDataType'
									) as def
			where	ISJSON(t.TableJson)>0
			)nest1
		where	
			extendsDataType is not null
			and extendsDataType not in ('string','description')
			and not exists (select 1
							from admin.DataType dt
							where	dt.d365Class=nest1.dataTypeName
									and dt.d365DataTypeBase=nest1.extendsDataType
							)

		update admin.DataType
		set DataTypeStrong= case
							when d365DataTypeBase = 'integer' then 'int'
							when d365DataTypeBase = 'biginteger' or d365DataTypeBase like '%recid' then 'bigint'
							when d365DataTypeBase = 'guid' then 'varchar(50)'
							when d365DataTypeBase in ('money','MoneyMST','decimal','AmountCur','AmountMst','amount'
														,'UnitAmountMST','UnitAmountCur','Price','PriceCur','SalesPrice') then 'numeric(18,2)'
							when d365DataTypeBase like '%datetime' then 'datetime'						
							when d365DataTypeBase like '%date' then 'date'						
						end 
			,DataTypeWeak= case
							when d365DataTypeBase = 'integer' then 'int'
							when d365DataTypeBase = 'biginteger' or d365DataTypeBase like '%recid' then 'bigint'
							when d365DataTypeBase = 'guid' then 'varchar(50)'
							when d365DataTypeBase in ('money','MoneyMST','decimal','AmountCur','AmountMst','amount'
														,'UnitAmountMST','UnitAmountCur','Price','PriceCur','SalesPrice') then 'float'
							when d365DataTypeBase like '%datetime' then 'varchar(40)'						
							when d365DataTypeBase like '%date' then 'varchar(40)'						
						end 

		--some known cases
		update admin.datatype 
		set DataTypeStrong='numeric(18,6)' 
		where d365DataTypeBase in ('realbase','LineAmount')

		--some types reference others
		update tgt
		set DataTypeWeak= src.DataTypeWeak
			,DataTypeStrong=src.DataTypeStrong
		from admin.DataType tgt
		join admin.DataType src on src.d365DataTypeBase=tgt.d365Class
		where 
			tgt.DataTypeStrong is null

		--extract the column details from the JSON
		--upsert the data incase the metadata gets turned off
		;merge admin.TableColumn as t
		using
			(select *
			from admin.TableColumnsFromJSON) s--view
									on s.TableName=t.TableName
									and s.ColumnName=t.ColumnName
		when matched then
			update set 
					ColumnIndex		=s.ColumnIndex
					,DisplayName	=s.DisplayName
					,d365Type		=s.d365Type
					,d365Class		=s.d365Class
					,DataTypeWeak	=s.DataTypeWeak
					,DataTypeStrong	=s.DataTypeStrong
		when not matched by source then
			delete
		when not matched by target then
			insert (
					TableName
					,ColumnIndex
					,ColumnName
					,DisplayName
					,d365Type
					,d365Class
					,DataTypeWeak
					,DataTypeStrong
					)
			values (
					s.TableName
					,s.ColumnIndex
					,s.ColumnName
					,s.DisplayName
					,s.d365Type
					,s.d365Class
					,s.DataTypeWeak
					,s.DataTypeStrong
					);

		--many string columns are missing a length
		update t
		set t.DataTypeStrong=tc.DataTypeStrong
			,t.DataTypeWeak=tc.DataTypeWeak
		from admin.TableColumn t
		join admin.TableColumnCorrections tc 
										on tc.TableName=t.TableName
										and tc.ColumnName=t.ColumnName

		update admin.TableColumn
		set DataTypeWeak='varchar(251)'--make it an unusual number so we can easily identify
			,DataTypeStrong='varchar(251)'
		where DataTypeWeak='varchar()'

		--log tables that are missing a RecID column as this is the primary key
	
		insert admin.Log(SourceSystem
						,Process
						,Task
						,Status
						,Error)
		select distinct 
			DB_NAME()
			,'Checking primary key RecID exists'
			,'admin.prcMetaDataTranslate'
			,'Table is missing a RecID column'
			,concat(TableName, ' is missing a RecID column')
		from admin.TableColumn tc
		where not exists (select 1 from admin.TableColumn r 
							where r.TableName=tc.TableName 
							and r.ColumnName='recid'
							)

		--log tables that have changed
		insert admin.Log(SourceSystem
						,Process
						,Task
						,Status
						,Error)
		select distinct 
			DB_NAME()
			,'Checking schema changes'
			,'admin.prcMetaDataTranslate'
			,'Data lake Table schema has changed, see Power BI Platform Status for details'
			,tableName
		from admin.TableColumnChanges
		

	END TRY
	BEGIN CATCH
 
		SET @error='prcMetaDataTranslate: '+cast(ERROR_MESSAGE() as varchar(200))
 
		--log the error
		exec admin.prcLog_CRUD @db,'MetaDataManagement','admin.prcMetaDataTranslate','Error',@error,null
 
		--bubble the error so that the caller will fail
		RAISERROR (@error,12,100)
	END CATCH
end
GO
