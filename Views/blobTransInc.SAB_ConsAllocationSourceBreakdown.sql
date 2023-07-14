create   view [blobTransInc].[SAB_ConsAllocationSourceBreakdown] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[AllocationTable]
,[BudgetAllocation]=cast([BudgetAllocation] as numeric(18,2))
,[BudgetPriorAllocation]=cast([BudgetPriorAllocation] as numeric(18,2))
,[BudgetTotal]=cast([BudgetTotal] as numeric(18,2))
,[CostAllocation]=cast([CostAllocation] as numeric(18,2))
,[CostCategory]
,[CostCategorySource]
,[CostPriorAllocation]=cast([CostPriorAllocation] as numeric(18,2))
,[CostTotal]=cast([CostTotal] as numeric(18,2))
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DefaultDimension]
,[FinancialInstance]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[RevenueCategory]
,[RevenueCategorySource]
 from stage.SAB_ConsAllocationSourceBreakdown t
GO
