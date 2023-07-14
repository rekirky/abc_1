CREATE EXTERNAL TABLE [blobFull].[SAB_ConsInventTable]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[BidGroupByElementType] [bigint] NULL,
[CostCategory] [bigint] NULL,
[Depth] [varchar] (51) NULL,
[Description] [varchar] (1000) NULL,
[Dimensional] [varchar] (51) NULL,
[DocumentSection] [bigint] NULL,
[Height] [varchar] (51) NULL,
[InventUnitId] [varchar] (10) NULL,
[ItemId] [varchar] (20) NULL,
[Manufacturer] [bigint] NULL,
[Name] [varchar] (120) NULL,
[PurchUnitId] [varchar] (10) NULL,
[RequireLotStartOverride] [varchar] (51) NULL,
[SummaryQty] [varchar] (51) NULL,
[SummaryUnitId] [varchar] (10) NULL,
[SummaryWorkOrder] [varchar] (51) NULL,
[TaxItemGroup] [varchar] (10) NULL,
[Width] [varchar] (51) NULL,
[Inactive] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[UseNetMeasurement] [varchar] (51) NULL,
[EquipRentalGroupItemId] [varchar] (20) NULL,
[Type] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsLandDevelopment/Main/SAB_ConsInventTable/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
