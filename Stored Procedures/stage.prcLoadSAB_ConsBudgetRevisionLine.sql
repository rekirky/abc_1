create   proc [stage].[prcLoadSAB_ConsBudgetRevisionLine] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsBudgetRevisionLine t 
where exists 
	(select 1 from stage.SAB_ConsBudgetRevisionLine s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsBudgetRevisionLine with(tablock) as t
using (select * from blobTransInc.SAB_ConsBudgetRevisionLine where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[ConsBudgetLine]=s.[ConsBudgetLine],[ConsBudgetRevision]=s.[ConsBudgetRevision],[CREATEDDATETIME]=s.[CREATEDDATETIME],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[MODIFIEDDATETIME]=s.[MODIFIEDDATETIME],[NewTotalBudget]=s.[NewTotalBudget],[PARTITION]=s.[PARTITION],[PreviousApprovedBudget]=s.[PreviousApprovedBudget],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[RevisionAmount]=s.[RevisionAmount]
when not matched then insert(
	[ConsBudgetLine],[ConsBudgetRevision],[CREATEDDATETIME],[DataLakeModified_DateTime],[MODIFIEDDATETIME],[NewTotalBudget],[PARTITION],[PreviousApprovedBudget],[RECID],[RECVERSION],[RevisionAmount]
)
values (
[ConsBudgetLine],[ConsBudgetRevision],[CREATEDDATETIME],[DataLakeModified_DateTime],[MODIFIEDDATETIME],[NewTotalBudget],[PARTITION],[PreviousApprovedBudget],[RECID],[RECVERSION],[RevisionAmount]
);

end
GO
