create   proc [stage].[prcLoadSAB_ConsBudgetTrans] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsBudgetTrans t 
where exists 
	(select 1 from stage.SAB_ConsBudgetTrans s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsBudgetTrans with(tablock) as t
using (select * from blobTransInc.SAB_ConsBudgetTrans where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[AmountMST]=s.[AmountMST],[Budget]=s.[Budget],[BudgetRevision]=s.[BudgetRevision],[CostCategory]=s.[CostCategory],[CREATEDBY]=s.[CREATEDBY],[CREATEDDATETIME]=s.[CREATEDDATETIME],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[LateChange]=s.[LateChange],[LateChangeFlag]=s.[LateChangeFlag],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[RevenueCategory]=s.[RevenueCategory],[Source]=s.[Source],[SourceEnumID]=s.[SourceEnumID],[SourceReference]=s.[SourceReference],[TransDate]=s.[TransDate]
when not matched then insert(
	[AmountMST],[Budget],[BudgetRevision],[CostCategory],[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[LateChange],[LateChangeFlag],[PARTITION],[RECID],[RECVERSION],[RevenueCategory],[Source],[SourceEnumID],[SourceReference],[TransDate]
)
values (
[AmountMST],[Budget],[BudgetRevision],[CostCategory],[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[LateChange],[LateChangeFlag],[PARTITION],[RECID],[RECVERSION],[RevenueCategory],[Source],[SourceEnumID],[SourceReference],[TransDate]
);

end
GO
