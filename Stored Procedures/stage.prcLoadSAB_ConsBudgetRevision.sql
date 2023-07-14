create   proc [stage].[prcLoadSAB_ConsBudgetRevision] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsBudgetRevision t 
where exists 
	(select 1 from stage.SAB_ConsBudgetRevision s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsBudgetRevision with(tablock) as t
using (select * from blobTransInc.SAB_ConsBudgetRevision where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[BudgetApprovalState]=s.[BudgetApprovalState],[BudgetApprovalStateEnumID]=s.[BudgetApprovalStateEnumID],[BudgetRevisionId]=s.[BudgetRevisionId],[BudgetState]=s.[BudgetState],[BudgetStateEnumID]=s.[BudgetStateEnumID],[ChangeReason]=s.[ChangeReason],[ConsBudget]=s.[ConsBudget],[CREATEDBY]=s.[CREATEDBY],[CREATEDDATETIME]=s.[CREATEDDATETIME],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[Description]=s.[Description],[DueDate]=s.[DueDate],[MODIFIEDBY]=s.[MODIFIEDBY],[MODIFIEDDATETIME]=s.[MODIFIEDDATETIME],[OH_RevisionOwner]=s.[OH_RevisionOwner],[PARTITION]=s.[PARTITION],[PostingDate]=s.[PostingDate],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[Responsibility]=s.[Responsibility],[SubmittedDate]=s.[SubmittedDate],[Transfer]=s.[Transfer],[TransferFlag]=s.[TransferFlag],[TransferElementFinancialInstance]=s.[TransferElementFinancialInstance],[WorkerSubmitter]=s.[WorkerSubmitter]
when not matched then insert(
	[BudgetApprovalState],[BudgetApprovalStateEnumID],[BudgetRevisionId],[BudgetState],[BudgetStateEnumID],[ChangeReason],[ConsBudget],[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[Description],[DueDate],[MODIFIEDBY],[MODIFIEDDATETIME],[OH_RevisionOwner],[PARTITION],[PostingDate],[RECID],[RECVERSION],[Responsibility],[SubmittedDate],[Transfer],[TransferFlag],[TransferElementFinancialInstance],[WorkerSubmitter]
)
values (
[BudgetApprovalState],[BudgetApprovalStateEnumID],[BudgetRevisionId],[BudgetState],[BudgetStateEnumID],[ChangeReason],[ConsBudget],[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[Description],[DueDate],[MODIFIEDBY],[MODIFIEDDATETIME],[OH_RevisionOwner],[PARTITION],[PostingDate],[RECID],[RECVERSION],[Responsibility],[SubmittedDate],[Transfer],[TransferFlag],[TransferElementFinancialInstance],[WorkerSubmitter]
);

end
GO
