CREATE EXTERNAL TABLE [blobFull].[SAB_ConsOrderChange]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[ApprovedDate] [varchar] (40) NULL,
[ChangeReason] [bigint] NULL,
[Opportunity] [bigint] NULL,
[OrderChange] [varchar] (30) NULL,
[SalesDesign] [bigint] NULL,
[Status] [varchar] (51) NULL,
[ToLot] [bigint] NULL,
[Type] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[SaleOrigin] [bigint] NULL,
[ConfirmedDate] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsOperations/WorksheetHeader/SAB_ConsOrderChange/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
