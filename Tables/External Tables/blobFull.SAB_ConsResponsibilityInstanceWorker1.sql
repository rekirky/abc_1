CREATE EXTERNAL TABLE [blobFull].[SAB_ConsResponsibilityInstanceWorker]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[FinancialInstance] [bigint] NULL,
[LineNumber] [bigint] NULL,
[IsPrimary] [varchar] (51) NULL,
[Responsibility] [bigint] NULL,
[Worker] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsOperations/Main/SAB_ConsResponsibilityInstanceWorker/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
