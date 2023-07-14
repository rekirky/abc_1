


CREATE view [blobTransInc].[SAB_ConsValue] 
as 
/*
	Custom transformation, be sure to set 
	admin.tables.EnableFullLoading and EnableIncrementalLoading to 0
	in [admin].[prcControllerMetaData]

	Unfortunately you cannot do schema binding to external tables
	so create a schema bound view in the preventDeletion schema that sources from the target dbo table to prevent deletion

	Be sure to run this

	update admin.tables
	set CoreColumnList='RecId,Value,DataLakeModified_DateTime'--dont add the LSN
	where tablename='Sab_ConsValue'

*/

	select
		*
	from
		(
		select 
			DML_Action
			,Start_LSN
			,Seq_Val
			,Instance
			,DataLakeModified_DateTime	=cast(DataLakeModified_DateTime as datetime2(0))
			,RECID
			,Value		=cast(case InstanceRelationType
								when 20195--currency
									then format(CurrencyValue ,'#,#.00')
								when 20614--float
									then format(FLOATVALUE ,'#,#.00')
								when 20640--date
									then format(nullif(try_cast(DateValue as date),'1900-01-01'),'yyyy-MM-dd')
								when 20680--text
									then isnull(nullif(TEXTPROMPT,'')+': ','')+TextValue
								when 20827--boolean
									then iif(booleanvalue= 1 , 'Yes','No')
								when 20945--int
									then format(IntValue ,'#,#')
								else format(nullif(try_cast(DateTimeValue as date),'1900-01-01'),'yyyy-MM-dd HH:mm tt')
							end
							as varchar(500))
		from stage.SAB_ConsValue
		)nest1
	where
		Value is not null
GO
