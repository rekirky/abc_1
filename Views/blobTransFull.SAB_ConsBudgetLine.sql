create   view [blobTransFull].[SAB_ConsBudgetLine] as select 
LSN,[CommittedRevisions]=cast([CommittedRevisions] as numeric(18,2))
,[ConsBudget]
,[CostCategory]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LateChanges]=cast([LateChanges] as numeric(18,2))
,[OriginalBudget]=cast([OriginalBudget] as numeric(18,2))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[RevenueCategory]
,[TotalBudget]=cast([TotalBudget] as numeric(18,2))
,[UncommittedRevisions]=cast([UncommittedRevisions] as numeric(18,2))
 from blobFull.SAB_ConsBudgetLine t
GO
