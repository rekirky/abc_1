create   proc [admin].[prcLoadEnums]
as
/*
	Upsert enums from various sources
*/

begin

	create table #prcLoadEnums(
							EnumSet varchar(256)
							,EnumCode bigint
							,Enum	varchar(256)
							)

	--======================================================================
	--From the enhanced metadata from the data lake export
	--======================================================================
	;with cte as
		(select
			*
			,instance =row_number() over(partition by EnumSet,EnumCode order by EnumCode)
		from
			(
			select distinct
				EnumSet
				,EnumCode=TRY_CAST(EnumCode as bigint)
				,Enum		
			FROM admin.Tables t
			cross apply openjson(t.TableJson,'$.definitions') 
								with(extendsDataType NVARCHAR(MAX) '$.extendsDataType' AS JSON
									,EnumSet varchar(500) N'$.dataTypeName'
									) as edt
			cross apply openjson(edt.extendsDataType) 
								with(appliedTraits NVARCHAR(MAX) '$.appliedTraits' AS JSON) as att
			cross apply openjson(att.appliedTraits) 
								with(args NVARCHAR(MAX) '$.arguments' AS JSON) as arg--array
			cross apply openjson(arg.args) 
								with(nam NVARCHAR(MAX) '$' AS JSON) as nam--records within the array {}
			cross apply openjson(nam.nam,'$.value') nams
			cross apply openjson(nams.[value],'$')  
								with(constantValues NVARCHAR(MAX) '$.constantValues' AS JSON) as er
			cross apply openjson(er.constantValues,'$') --array of arrays
								 with(Enum varchar(200) N'$[2]'
										,EnumCode varchar(200) N'$[3]'
								 ) as enum
			where	ISJSON(t.TableJson)>0
			)nest1
		)
	insert #prcLoadEnums(
						EnumSet 
						,EnumCode 
						,Enum
						)
	select 
			EnumSet 
			,EnumCode 
			,Enum
	from cte
	where instance=1

	--======================================================================
	--RetailEnumValueTable
	--======================================================================
	;with cte as 
		(select distinct
			EnumSet		=EnumName
			,EnumCode	=TRY_CAST(Value as bigint)
			,Enum		=MemberName
		from blobFull.RetailEnumValueTable
		)
	insert #prcLoadEnums(
						EnumSet 
						,EnumCode 
						,Enum
						)
	select 
			EnumSet 
			,EnumCode 
			,Enum
	from cte
	where not exists (select 1 
						from #prcLoadEnums le
						where	cte.EnumSet=le.EnumSet
								and cte.EnumCode=le.EnumCode
						)

	--======================================================================
	--SRSAnalysisEnums
	--======================================================================
	;with cte as 
		(select distinct
			EnumSet		=EnumName
			,EnumCode	=TRY_CAST(EnumItemValue as bigint)
			,Enum		=EnumItemName
		from blobFull.SRSAnalysisEnums
		)
	insert #prcLoadEnums(
						EnumSet 
						,EnumCode 
						,Enum
						)
	select 
			EnumSet 
			,EnumCode 
			,Enum
	from cte
	where not exists (select 1 
						from #prcLoadEnums le
						where	cte.EnumSet=le.EnumSet
								and cte.EnumCode=le.EnumCode
						)

	--======================================================================

	;merge dbo.Enum as e
	using (select * from #prcLoadEnums) as s
		on	s.EnumSet=e.EnumSet
			and s.EnumCode=e.EnumCode
	when matched then 
		update set Enum=s.Enum
	when not matched then 
		insert (EnumSet
				,EnumCode
				,Enum
				)			
		values (s.EnumSet
				,s.EnumCode
				,s.Enum
				);
			
end
GO
