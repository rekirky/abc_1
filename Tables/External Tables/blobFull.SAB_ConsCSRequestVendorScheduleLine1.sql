CREATE EXTERNAL TABLE [blobFull].[SAB_ConsCSRequestVendorScheduleLine]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[LineNumber] [bigint] NULL,
[Obligation] [varchar] (51) NULL,
[RequestLine] [bigint] NULL,
[RequestVendorSchedule] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsCS/WorksheetLine/SAB_ConsCSRequestVendorScheduleLine/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
