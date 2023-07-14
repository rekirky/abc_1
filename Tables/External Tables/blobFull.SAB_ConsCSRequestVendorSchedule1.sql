CREATE EXTERNAL TABLE [blobFull].[SAB_ConsCSRequestVendorSchedule]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[InsuranceReason] [bigint] NULL,
[LineNumber] [bigint] NULL,
[Request] [bigint] NULL,
[TradeType] [bigint] NULL,
[Vendor] [bigint] NULL,
[WarrantyVendor] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[WarrantyExpiryDate] [varchar] (40) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsCS/WorksheetLine/SAB_ConsCSRequestVendorSchedule/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
