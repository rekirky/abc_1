CREATE EXTERNAL TABLE [blobFull].[SAB_ConsCSItem]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Category] [bigint] NULL,
[Name] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[TarionDefaultItem] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsCS/Main/SAB_ConsCSItem/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
