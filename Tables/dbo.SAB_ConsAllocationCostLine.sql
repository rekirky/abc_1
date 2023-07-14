CREATE TABLE [dbo].[SAB_ConsAllocationCostLine]
(
[AllocationTable] [bigint] NULL,
[Attribute] [bigint] NULL,
[BudgetAllocation] [numeric] (18, 2) NULL,
[BudgetPriorAllocation] [numeric] (18, 2) NULL,
[BudgetTotal] [numeric] (18, 2) NULL,
[CostAllocation] [numeric] (18, 2) NULL,
[CostCategory] [bigint] NULL,
[CostPriorAllocation] [numeric] (18, 2) NULL,
[CostTotal] [numeric] (18, 2) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RevenueCategory] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsAllocationCostLine] ADD CONSTRAINT [PK_SAB_ConsAllocationCostLine_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
