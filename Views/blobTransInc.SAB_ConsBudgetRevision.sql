create   view [blobTransInc].[SAB_ConsBudgetRevision] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[BudgetApprovalState]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsBudgetApprovalState' and e.EnumCode=t.[BudgetApprovalState]) ,BudgetApprovalStateEnumID=[BudgetApprovalState]
,[BudgetRevisionId]
,[BudgetState]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsBudgetState' and e.EnumCode=t.[BudgetState]) ,BudgetStateEnumID=[BudgetState]
,[ChangeReason]
,[ConsBudget]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[DueDate]=cast([DueDate] as date)
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[OH_RevisionOwner]
,[PARTITION]
,[PostingDate]=cast([PostingDate] as date)
,[RECID]
,[RECVERSION]
,[Responsibility]
,[SubmittedDate]=cast([SubmittedDate] as date)
,[Transfer]=case when [Transfer]=1 then 'Yes' else 'No' end ,TransferFlag=cast([Transfer] as bit)
,[TransferElementFinancialInstance]
,[WorkerSubmitter]
 from stage.SAB_ConsBudgetRevision t
GO
