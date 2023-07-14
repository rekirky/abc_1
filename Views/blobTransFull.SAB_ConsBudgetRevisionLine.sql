create   view [blobTransFull].[SAB_ConsBudgetRevisionLine] as select 
LSN,[ConsBudgetLine]
,[ConsBudgetRevision]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[NewTotalBudget]=cast([NewTotalBudget] as numeric(18,2))
,[PARTITION]
,[PreviousApprovedBudget]=cast([PreviousApprovedBudget] as numeric(18,2))
,[RECID]
,[RECVERSION]
,[RevisionAmount]=cast([RevisionAmount] as numeric(18,2))
 from blobFull.SAB_ConsBudgetRevisionLine t
GO
