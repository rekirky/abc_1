create view [admin].[TableColumnsFromJSON]
as
select 
	nest1.TableName
	,nest1.ColumnIndex
	,nest1.ColumnName
	,nest1.DisplayName
	,nest1.d365Type		
	,nest1.d365Class
	,DataTypeWeak	=case	when nest1.ColumnName in ('_SysRowId','LSN')		then 'varchar(60)'
							when nest1.ColumnName in ('CREATEDBY','MODIFIEDBY')	then 'varchar(20)'
							when dt.DataTypeWeak is not null					then dt.DataTypeWeak
							when cc.DataTypeWeak is not null					then cc.DataTypeWeak
							when nest1.d365Class like '%datetime%'				then 'varchar(40)'
							when nest1.d365Type = 'String' or try_cast(nest1.maximumLength as int) is not null then concat('varchar(',nest1.maximumLength,')')
							when nest1.d365Type = 'DateTime' then 'varchar(40)'
							when nest1.d365Type = 'Int64'		then 'bigint'
							when nest1.d365Type = 'Int32'		then 'int'
							when nest1.d365Type = 'guid'		then 'varchar(50)'
							when nest1.d365Type is null			then 'varchar(51)'--make it obvious that this is an issue
							else concat(nest1.d365Type,nest1.maximumLength)
					end
	,DataTypeStrong	=case	when nest1.ColumnName in ('_SysRowId','LSN')		then 'varchar(60)'
							when nest1.ColumnName in ('CREATEDBY','MODIFIEDBY')	then 'varchar(20)'
							when dt.DataTypeStrong is not null					then dt.DataTypeStrong
							when cc.DataTypeStrong is not null					then cc.DataTypeStrong
							when nest1.d365Class like '%datetime%'				then 'datetime2(0)'
							when nest1.d365Type = 'String' or try_cast(nest1.maximumLength as int) is not null then concat('varchar(',nest1.maximumLength,')')
							when nest1.d365Type = 'DateTime'	then 'DateTime2(0)'
							when nest1.d365Type = 'Int64'		then 'bigint'
							when nest1.d365Type = 'Int32'		then 'int'
							when nest1.d365Type = 'guid'		then 'varchar(50)'
							when nest1.d365Type is null			then 'varchar(51)'--make it obvious that this is an issue
							else concat(nest1.d365Type,nest1.maximumLength)
					end
from
	(
	select
		t.TableName
		,ColumnIndex	=att.[key] 
		,ColumnName		=JSON_VALUE(att.value,'$.name') 
		,DisplayName	=JSON_VALUE(att.value,'$.displayName') 
		,d365Class		=JSON_VALUE(att.value,'$.dataType') 
		,d365Type		=JSON_VALUE(att.value,'$.dataFormat') 
		,maximumLength	=JSON_VALUE(att.value,'$.maximumLength') 
	FROM admin.Tables t
	cross apply openjson(t.TableJson)
						with(definitions NVARCHAR(MAX) '$.definitions' AS JSON) as tbl
	cross apply openjson(tbl.definitions)
						with(hasAttributes NVARCHAR(MAX) '$.hasAttributes' AS JSON
							--,dataTypeName varchar(500) N'$.dataTypeName'
							,explanation varchar(500) N'$.explanation'
							) as def
	cross apply openjson(def.hasAttributes) att
	where	ISJSON(t.TableJson)>0
	)nest1
left join admin.DataType dt
						on dt.d365Class=nest1.d365Class
left join admin.TableColumnCorrections cc--hard code corrections that we know of
									on cc.TableName		=nest1.TableName
									and cc.ColumnName	=nest1.ColumnName
GO
