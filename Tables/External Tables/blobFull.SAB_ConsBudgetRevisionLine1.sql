CREATE EXTERNAL TABLE [blobFull].[SAB_ConsBudgetRevisionLine]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[ConsBudgetLine] [bigint] NULL,
[ConsBudgetRevision] [bigint] NULL,
[NewTotalBudget] [float] NULL,
[PreviousApprovedBudget] [float] NULL,
[RevisionAmount] [float] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[CREATEDDATETIME] [varchar] (40) NULL
)
WITH
(
LOCATION = N'Tables/SAB_Cons/TransactionLine/SAB_ConsBudgetRevisionLine/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
