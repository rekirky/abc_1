CREATE EXTERNAL TABLE [blobFull].[SAB_ConsLotClosingTask]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Lot] [bigint] NULL,
[TaskAttribute] [bigint] NULL,
[Responsibility] [bigint] NULL,
[Completed] [varchar] (51) NULL,
[Notes] [varchar] (1000) NULL,
[Area] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CompletedBy] [bigint] NULL,
[DateCompleted] [varchar] (40) NULL,
[DateDue] [varchar] (40) NULL,
[LotFinancialInstance] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/General/Group/SAB_ConsLotClosingTask/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
