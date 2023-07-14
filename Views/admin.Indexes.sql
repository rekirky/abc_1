
CREATE   view [admin].[Indexes]
as

with cte as (
	select top 100 percent --this is needed for the string agg later to work with the correct order
		skema	=schema_name(t.schema_id)
		,tbl	=t.name
		,i.index_id
		,ic.index_column_id
		,col=c.name
	from sys.tables t
	join sys.indexes i 
					on t.object_id=i.object_id
	join sys.index_columns ic 
							on ic.object_id=i.object_id 
							and ic.index_id= i.index_id
	join sys.columns c 
					on c.object_id =ic.object_id  
					and c.column_id=ic.column_id
	where i.type>0 --not a heap
		and i.is_unique_constraint=0
		and c.name not like '%zap%'
	order by 1,2,3,4
	)
select 
	schemaName		=skema
	,tableName		=tbl
	,tableNameFull	=concat(tbl,'.',skema)
	,indexName		=idx
	,indexType		=type_desc
	,createStatement=concat('create ',type_desc,' index ',idx,' on dbo.',tbl,' (', string_agg(col,',') ,')')
	,columnOrder	=string_agg(col,',') 
	,columnCount	=count(1)
from (
	select 
		skema= schema_name(t.schema_id) 
		,tbl= t.name
		,idx= ix.name
		,unq=iif(ix.is_unique = 1 ,'UNIQUE ' , '' ) 
		,type_desc=ix.type_desc collate SQL_Latin1_General_CP1_CI_AS
		,IndexOptions=concat(' FILLFACTOR =' , ix.fill_factor )
		,cte.col
		,cte.index_column_id
	from sys.tables t 
	inner join sys.indexes ix 
							on t.object_id=ix.object_id
	join cte 
			on cte.skema=schema_name(t.schema_id) 
			and cte.tbl=t.name 
			and ix.index_id=cte.index_id
	where 
		ix.type>0 --0=heap, 1=clustered,2=non clust ,5+=CCI
		and ix.is_primary_key=0 
		and ix.is_unique_constraint=0 --and schema_name(tb.schema_id)= @SchemaName and tb.name=@TableName
		and t.is_ms_shipped=0 
		and t.name<>'sysdiagrams'
		and ix.is_disabled =0
		and  ix.name not like '%incremental%'
		--and t.name='DirPersonName'
	)nest1
group by 
	skema
	,tbl
	,idx
	,type_desc
GO
