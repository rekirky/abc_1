CREATE EXTERNAL TABLE [blobFull].[SAB_ConsCSRequestWorkDetailLine]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Amount] [float] NULL,
[CostCategory] [bigint] NULL,
[LineNumber] [bigint] NULL,
[Name] [varchar] (1000) NULL,
[RequestLine] [bigint] NULL,
[RequestWorkDetail] [bigint] NULL,
[TaxGroup] [varchar] (10) NULL,
[TaxItemGroup] [varchar] (10) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsCS/WorksheetLine/SAB_ConsCSRequestWorkDetailLine/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
