create   view [blobTransInc].[SAB_ConsAllocationLine] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[AllocationCostLine]
,[AllocationExclude]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsAllocationExclude' and e.EnumCode=t.[AllocationExclude]) ,AllocationExcludeEnumID=[AllocationExclude]
,[BudgetAllocation]=cast([BudgetAllocation] as numeric(18,2))
,[BudgetPriorAllocation]=cast([BudgetPriorAllocation] as numeric(18,2))
,[BudgetTotal]=cast([BudgetTotal] as numeric(18,2))
,[CostAllocation]=cast([CostAllocation] as numeric(18,2))
,[CostCategory]
,[CostPriorAllocation]=cast([CostPriorAllocation] as numeric(18,2))
,[CostTotal]=cast([CostTotal] as numeric(18,2))
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DefaultDimension]
,[FinancialInstance]
,[OverBudgetAmount]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[RevenueCategory]
 from stage.SAB_ConsAllocationLine t
GO
