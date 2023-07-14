CREATE EXTERNAL TABLE [blobFull].[SAB_ConsVendTradeTypeVendor]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[BuildingTypeId] [varchar] (20) NULL,
[FacadeId] [varchar] (20) NULL,
[IsPrimary] [varchar] (51) NULL,
[ItemId] [varchar] (20) NULL,
[LotStructureElement] [bigint] NULL,
[OPTION_] [bigint] NULL,
[TradeType] [bigint] NULL,
[ValidFrom] [varchar] (40) NULL,
[ValidTo] [varchar] (40) NULL,
[Vendor] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[OH_VendorSelectionBidding] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsProcurement/Main/SAB_ConsVendTradeTypeVendor/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
