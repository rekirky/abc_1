CREATE TABLE [stage].[SAB_ConsAllocationLine]
(
[Instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[AllocationCostLine] [bigint] NULL,
[AllocationExclude] [varchar] (51) NULL,
[BudgetAllocation] [float] NULL,
[BudgetPriorAllocation] [float] NULL,
[BudgetTotal] [float] NULL,
[CostAllocation] [float] NULL,
[CostCategory] [bigint] NULL,
[CostPriorAllocation] [float] NULL,
[CostTotal] [float] NULL,
[DefaultDimension] [bigint] NULL,
[FinancialInstance] [bigint] NULL,
[OverBudgetAmount] [varchar] (51) NULL,
[RevenueCategory] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
) ON [PRIMARY]
GO
