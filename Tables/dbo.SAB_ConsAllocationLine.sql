CREATE TABLE [dbo].[SAB_ConsAllocationLine]
(
[AllocationCostLine] [bigint] NULL,
[AllocationExclude] [varchar] (256) NULL,
[AllocationExcludeEnumID] [varchar] (51) NULL,
[BudgetAllocation] [numeric] (18, 2) NULL,
[BudgetPriorAllocation] [numeric] (18, 2) NULL,
[BudgetTotal] [numeric] (18, 2) NULL,
[CostAllocation] [numeric] (18, 2) NULL,
[CostCategory] [bigint] NULL,
[CostPriorAllocation] [numeric] (18, 2) NULL,
[CostTotal] [numeric] (18, 2) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DefaultDimension] [bigint] NULL,
[FinancialInstance] [bigint] NULL,
[OverBudgetAmount] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RevenueCategory] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsAllocationLine] ADD CONSTRAINT [PK_SAB_ConsAllocationLine_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
