CREATE   proc [admin].[prcMetaDataFetch]
as
/*
	Execute this proc everyday else there will be a failure trying to read from the files

	Note, manifest files can have the same name and live in a different path
	, so the path and file name are needed to get a uniue path

	1. From the first manifest file use this to find all manifest files. json=subManifests
	2. The leaf manifest files will have references to REAL table files. json=entities.LocalEntity
*/
begin

	declare @datalakeRoot varchar(500)
			,@manifestFile varchar(200)='Tables.manifest.cdm.json'
			,@path varchar(1000)='Tables/'
			,@sql varchar(8000)
			,@json varchar(max)
			,@error varchar(500)
			,@database varchar(100)=db_name()
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
		exec admin.prcLog_CRUD @db,'MetaDataManagement','admin.prcMetaDataFetch','Started',null,null

		select @datalakeRoot=admin.fnGetSetting('DataLakeRoot')
		select @entityFileSuffix=admin.fnGetSetting('DataLakeEntityMetaDataFileExtension')
	
		select datalakeRoot=@datalakeRoot,entityFileSuffix=@entityFileSuffix

		truncate table admin.TableManifest

		while	@manifestFile is not null
				and @i<1000 --prevent an infinite loop
		begin

			begin try
				--get the manifests
				set @sql=concat('insert admin.TableManifest(Path,FileName,ManifestJSON) select '''
								,@path
								,''','''
								,@manifestFile
								,''',BulkColumn'
								,' FROM OPENROWSET(BULK '''
								,@datalakeRoot
								,@path
								,@manifestFile
								,''',DATA_SOURCE = ''d365JSON'', single_clob) d')
				print @sql
				exec (@sql)

				update admin.TableManifest
				set EntityJSON=ManifestJSON
				where	FileName=@manifestFile
						and Path=@path
						and ManifestJSON like '%entities%'

				insert admin.TableManifest(Path,FileName)
				select	concat(@path,manifestName,'/')
						,substring(definition,CHARINDEX('/',definition)+1,9999)
				from admin.TableManifest tf
				cross apply openjson(ManifestJSON)
									with(subManifests NVARCHAR(MAX) '$.subManifests' AS JSON) as js
				outer apply openjson(subManifests)
								with(manifestName varchar(500) N'$.manifestName'
									,definition varchar(500) N'$.definition'
								) as r
				where	FileName=@manifestFile
						and Path=@path
						and ISJSON(ManifestJSON)>0
						and ManifestJSON like '%subManifests%'

				--testing
				--if @path like 'Tables/SAB_ConsLandDevelopment/%'
				--begin
				--	select * from admin.TableManifest tf order by path 
				--end

			end try
			begin catch
 
				SET @error='admin.prcMetaDataFetch: '+cast(ERROR_MESSAGE() as varchar(200))
				--log the error
				exec admin.prcLog_CRUD @database,'DatalakeIngestion','admin.prcMetaDataFetch','Warning',@error,null

				update admin.TableManifest
				set Processed=getdate()
				where FileName=@manifestFile
						and Path=@path

				select error=@error,Path=@path,manifestFile=@manifestFile
			end catch

			update admin.TableManifest
			set Processed=getdate()
			where	FileName=@manifestFile
					and Path=@path

			select @manifestFile=null
					,@path=null

			select top 1 @manifestFile = FileName
						,@path=Path
			from admin.TableManifest
			where	ManifestJSON is null
					and Processed is null

			--this looks wierd, we are deleting what we are about to fetch, its easier this way as updates via dynamic sql OPENROSET are a mess
			delete admin.TableManifest
			where FileName=@manifestFile
					and Path=@path

			select path=@path,manifestFile=@manifestFile,counter=@i

			set @i=@i+1

		end

	END TRY
	BEGIN CATCH
 
		SET @error='prcMetaDataFetch: '+cast(ERROR_MESSAGE() as varchar(200))
 
		--log the error
		exec admin.prcLog_CRUD @db,'MetaDataManagement','admin.prcMetaDataFetch','Error',@error,null
 
		--bubble the error so that the caller will fail
		RAISERROR (@error,12,100)
	END CATCH
end
GO
