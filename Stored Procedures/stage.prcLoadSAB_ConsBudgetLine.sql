create   proc [stage].[prcLoadSAB_ConsBudgetLine] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsBudgetLine t 
where exists 
	(select 1 from stage.SAB_ConsBudgetLine s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsBudgetLine with(tablock) as t
using (select * from blobTransInc.SAB_ConsBudgetLine where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[CommittedRevisions]=s.[CommittedRevisions],[ConsBudget]=s.[ConsBudget],[CostCategory]=s.[CostCategory],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[LateChanges]=s.[LateChanges],[OriginalBudget]=s.[OriginalBudget],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[RevenueCategory]=s.[RevenueCategory],[TotalBudget]=s.[TotalBudget],[UncommittedRevisions]=s.[UncommittedRevisions]
when not matched then insert(
	[CommittedRevisions],[ConsBudget],[CostCategory],[DataLakeModified_DateTime],[LateChanges],[OriginalBudget],[PARTITION],[RECID],[RECVERSION],[RevenueCategory],[TotalBudget],[UncommittedRevisions]
)
values (
[CommittedRevisions],[ConsBudget],[CostCategory],[DataLakeModified_DateTime],[LateChanges],[OriginalBudget],[PARTITION],[RECID],[RECVERSION],[RevenueCategory],[TotalBudget],[UncommittedRevisions]
);

end
GO
