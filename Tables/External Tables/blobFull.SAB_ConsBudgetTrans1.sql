CREATE EXTERNAL TABLE [blobFull].[SAB_ConsBudgetTrans]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[AmountMST] [float] NULL,
[Budget] [bigint] NULL,
[BudgetRevision] [bigint] NULL,
[CostCategory] [bigint] NULL,
[LateChange] [varchar] (51) NULL,
[RevenueCategory] [bigint] NULL,
[Source] [varchar] (51) NULL,
[SourceReference] [varchar] (30) NULL,
[TransDate] [varchar] (40) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL
)
WITH
(
LOCATION = N'Tables/SAB_Cons/Transaction/SAB_ConsBudgetTrans/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
