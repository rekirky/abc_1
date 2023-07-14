CREATE EXTERNAL TABLE [blobFull].[SAB_ConsCSRequestLine]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Category] [bigint] NULL,
[CloseDate] [varchar] (40) NULL,
[CloseReason] [bigint] NULL,
[Diagnosis] [bigint] NULL,
[Item] [bigint] NULL,
[LineNumber] [bigint] NULL,
[Location] [bigint] NULL,
[Request] [bigint] NULL,
[RequestStatus] [varchar] (51) NULL,
[RootCause] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[RequestOrientationTask] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsCS/WorksheetLine/SAB_ConsCSRequestLine/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
