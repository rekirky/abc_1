create   view [blobTransFull].[SAB_ConsBudget] as select 
LSN,[BudgetApprovalState]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsBudgetApprovalState' and e.EnumCode=t.[BudgetApprovalState]) ,BudgetApprovalStateEnumID=[BudgetApprovalState]
,[BudgetState]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsBudgetState' and e.EnumCode=t.[BudgetState]) ,BudgetStateEnumID=[BudgetState]
,[BudgetType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsBudgetType' and e.EnumCode=t.[BudgetType]) ,BudgetTypeEnumID=[BudgetType]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FinancialInstance]
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[PARTITION]
,[PostingDate]=cast([PostingDate] as date)
,[RECID]
,[RECVERSION]
,[Responsibility]
,[SubmittedDate]=cast([SubmittedDate] as date)
,[WorkerSubmitter]
 from blobFull.SAB_ConsBudget t
GO
