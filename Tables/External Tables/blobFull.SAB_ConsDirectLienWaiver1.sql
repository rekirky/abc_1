CREATE EXTERNAL TABLE [blobFull].[SAB_ConsDirectLienWaiver]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[DocumentTemplate] [bigint] NULL,
[LienWaiverId] [varchar] (30) NULL,
[LotStructureElement] [bigint] NULL,
[Type] [varchar] (51) NULL,
[Vendor] [bigint] NULL,
[Status] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL
)
WITH
(
LOCATION = N'Tables/General/WorksheetHeader/SAB_ConsDirectLienWaiver/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
