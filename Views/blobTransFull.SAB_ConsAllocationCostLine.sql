create   view [blobTransFull].[SAB_ConsAllocationCostLine] as select 
LSN,[AllocationTable]
,[Attribute]
,[BudgetAllocation]=cast([BudgetAllocation] as numeric(18,2))
,[BudgetPriorAllocation]=cast([BudgetPriorAllocation] as numeric(18,2))
,[BudgetTotal]=cast([BudgetTotal] as numeric(18,2))
,[CostAllocation]=cast([CostAllocation] as numeric(18,2))
,[CostCategory]
,[CostPriorAllocation]=cast([CostPriorAllocation] as numeric(18,2))
,[CostTotal]=cast([CostTotal] as numeric(18,2))
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[RevenueCategory]
 from blobFull.SAB_ConsAllocationCostLine t
GO
