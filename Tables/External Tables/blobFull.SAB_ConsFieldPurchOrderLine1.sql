CREATE EXTERNAL TABLE [blobFull].[SAB_ConsFieldPurchOrderLine]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Amount] [float] NULL,
[CostCategory] [bigint] NULL,
[CSRequestLine] [bigint] NULL,
[FieldPurchOrder] [bigint] NULL,
[ItemId] [varchar] (20) NULL,
[LineNumber] [bigint] NULL,
[PurchPrice] [varchar] (51) NULL,
[PurchQty] [varchar] (51) NULL,
[PurchUnit] [varchar] (10) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[Name] [varchar] (1000) NULL,
[TaxGroup] [varchar] (10) NULL,
[TaxItemGroup] [varchar] (10) NULL,
[ChangeReason] [bigint] NULL,
[EquipRentalEstimatedEndDate] [varchar] (40) NULL,
[EquipRentalStartDate] [varchar] (40) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsProcurement/WorksheetLine/SAB_ConsFieldPurchOrderLine/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
