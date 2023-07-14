CREATE EXTERNAL TABLE [blobFull].[SAB_ConsBudgetLine]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[CommittedRevisions] [float] NULL,
[ConsBudget] [bigint] NULL,
[CostCategory] [bigint] NULL,
[LateChanges] [float] NULL,
[OriginalBudget] [float] NULL,
[RevenueCategory] [bigint] NULL,
[TotalBudget] [float] NULL,
[UncommittedRevisions] [float] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/SAB_Cons/TransactionLine/SAB_ConsBudgetLine/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
