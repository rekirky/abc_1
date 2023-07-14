CREATE   proc [admin].[prcMetaDataController] @pBatchType char(1)=null--this is ignored
as
/*
	The metadata refresh should happen once per day to keep up with changes
*/
begin
	declare @db varchar(200)=db_name()

	exec admin.prcLog_CRUD @db,'MetaDataManagement','admin.prcMetaDataController','Started',null,null

	update admin.tables
	set HasCustomTransformationView=0

	update admin.tables
	set HasCustomTransformationView=1
	where TableName in (
						select ss.value
						from admin.settings s
						cross apply string_split(VALUE,',')  ss
						where SettingPK='DataLakeCustomTransformViews'
						)

	--=========================================================================
	exec admin.prcMetaDataFetch
	exec admin.prcMetaDataTranslate
	exec admin.prcCreateExternalTableDefinitions 'F',0--full tables, dont test after creation
	exec admin.prcCreateExternalTableDefinitions 'I',0--incremental tables, dont test after creation

	update tt
	set EnableFullLoading=0
		,EnableIncrementalLoading=0
	from admin.tables tt
	where not exists (select 1--the shredding hasn't resulted in a real table being created
					from admin.TableColumn tc
					where tc.TableName=tt.TableName
					)

	update tt
	set EnableFullLoading=1
		,EnableIncrementalLoading=1
		,Error=null
	from admin.tables tt
	where 
			HasCustomTransformationView=1
			or exists (select 1
						from admin.TableColumn tc
						where tc.TableName=tt.TableName
						)		

	--flag any bad external tables
	exec admin.prcTestExternalTables 'F'--this can change EnableFullLoading to 0
	--exec admin.prcTestExternalTables 'I'--we don't use external tables for incremental loading

	update admin.tables
	set EnableFullLoading=0
		,EnableIncrementalLoading=0
	where 
			tableName in ('Enum','RetailEnumValueTable','SRSAnalysisEnums'--we will deal with these in [admin].[prcLoadEnums]
							)

	--create the transformation views
	exec admin.prcCreateDboTablesAndTransformViews
					@fullOrInc ='F',@pCreateTables=1,@pDeleteIfExists=1 

	exec admin.prcCreateDboTablesAndTransformViews
					@fullOrInc ='I'

	--=========================================================================
	exec admin.prcLog_CRUD @db,'MetaDataManagement','admin.prcMetaDataController','Finished',null,null

end
GO
