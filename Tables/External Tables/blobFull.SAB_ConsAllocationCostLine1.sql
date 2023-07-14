CREATE EXTERNAL TABLE [blobFull].[SAB_ConsAllocationCostLine]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[AllocationTable] [bigint] NULL,
[Attribute] [bigint] NULL,
[BudgetAllocation] [float] NULL,
[BudgetPriorAllocation] [float] NULL,
[BudgetTotal] [float] NULL,
[CostAllocation] [float] NULL,
[CostCategory] [bigint] NULL,
[CostPriorAllocation] [float] NULL,
[CostTotal] [float] NULL,
[RevenueCategory] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/General/WorksheetLine/SAB_ConsAllocationCostLine/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
