create   view [blobTransInc].[SAB_ConsBudgetRevisionLine] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[ConsBudgetLine]
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
 from stage.SAB_ConsBudgetRevisionLine t
GO
