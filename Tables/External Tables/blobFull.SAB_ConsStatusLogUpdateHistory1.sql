CREATE EXTERNAL TABLE [blobFull].[SAB_ConsStatusLogUpdateHistory]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[NewTransDate] [varchar] (40) NULL,
[OriginalTransDate] [varchar] (40) NULL,
[Status] [varchar] (51) NULL,
[StatusLog] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [varchar] (40) NULL
)
WITH
(
LOCATION = N'Tables/General/Transaction/SAB_ConsStatusLogUpdateHistory/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
