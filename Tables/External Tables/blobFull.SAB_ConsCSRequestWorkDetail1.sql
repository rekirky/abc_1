CREATE EXTERNAL TABLE [blobFull].[SAB_ConsCSRequestWorkDetail]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Appointment] [bigint] NULL,
[LineNumber] [bigint] NULL,
[Request] [bigint] NULL,
[Status] [varchar] (51) NULL,
[Vendor] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[FieldPurchOrder] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsCS/WorksheetHeader/SAB_ConsCSRequestWorkDetail/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
