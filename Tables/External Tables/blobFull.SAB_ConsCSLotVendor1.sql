CREATE EXTERNAL TABLE [blobFull].[SAB_ConsCSLotVendor]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Lot] [bigint] NULL,
[OPTION_] [bigint] NULL,
[TradeType] [bigint] NULL,
[ValidFrom] [varchar] (40) NULL,
[ValidTo] [varchar] (40) NULL,
[Vendor] [bigint] NULL,
[WarrantyExpiryDate] [varchar] (40) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsCS/WorksheetLine/SAB_ConsCSLotVendor/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
