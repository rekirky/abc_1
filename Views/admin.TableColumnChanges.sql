
create   view [admin].[TableColumnChanges]
as
/*
	Surface any schema changes between the current and previous schemas
*/
with cte as
		(select top 2 
			AsAt
			,instance=ROW_NUMBER() over (order by AsAt desc)
		from admin.TableColumnHistory
		group by AsAt
		order by AsAt desc
		)
	,cteHist as 
		(select
			AsAt
			,TableName
			,ColumnName
			,ColumnIndex
			,DisplayName	=isnull(DisplayName,'')
			,DataTypeWeak	=isnull(DataTypeWeak,'')
			,DataTypeStrong	=isnull(DataTypeStrong,'')
			,d365Type		=isnull(d365Type,'')
			,d365Class		=isnull(d365Class,'')
		from admin.TableColumnHistory 
		)
select *
from
	(
	select
		cur.TableName
		,LatestSchemaFetched	=cur.AsAt
		,PreviousSchemaFetched	=prev.AsAt
		,cur.ColumnIndex
		,TableColumnIndex		=Concat(cur.TableName,'.',cur.ColumnIndex)
		,ColumnNameChange		=iif(prev.ColumnName<>cur.ColumnName,concat('was "',prev.ColumnName,'" now is "',cur.ColumnName,'"'),null)
		,DisplayNameChange		=iif(prev.DisplayName<>cur.DisplayName,concat('was "',prev.DisplayName,'" now is "',cur.DisplayName,'"'),null)
		,DataTypeWeakChange		=iif(prev.DataTypeWeak<>cur.DataTypeWeak,concat('was "',prev.DataTypeWeak,'" now is "',cur.DataTypeWeak,'"'),null)
		,DataTypeStrongChange	=iif(prev.DataTypeStrong<>cur.DataTypeStrong,concat('was "',prev.DataTypeStrong,'" now is "',cur.DataTypeStrong,'"'),null)
		,d365TypeChange			=iif(prev.d365Type<>cur.d365Type,concat('was "',prev.d365Type,'" now is "',cur.d365Type,'"'),null)
		,d365ClassChange		=iif(prev.d365Class<>cur.d365Class,concat('was "',prev.d365Class,'" now is "',cur.d365Class,'"'),null)
	from 
		(select *
		from cteHist h
		where exists (select 1 
						from cte 
						where instance=1 
						and cte.AsAt=h.AsAt
						)
		)cur
	join
		(select *
		from cteHist h
		where exists (select 1 
						from cte 
						where instance=2 
						and cte.AsAt=h.AsAt
						)
		)prev
		on prev.TableName=cur.TableName
		and prev.ColumnIndex=cur.ColumnIndex
	)nest1
where
	ColumnNameChange		is not null
	or DisplayNameChange	is not null
	or DataTypeWeakChange	is not null
	or DataTypeStrongChange	is not null
	or d365TypeChange		is not null
	or d365ClassChange		is not null

GO
