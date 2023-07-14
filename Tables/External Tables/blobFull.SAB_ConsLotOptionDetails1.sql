CREATE EXTERNAL TABLE [blobFull].[SAB_ConsLotOptionDetails]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[CostPrice] [float] NULL,
[DiscountAmount] [float] NULL,
[DiscountType] [bigint] NULL,
[FinancialInstance] [bigint] NULL,
[ItemId] [varchar] (20) NULL,
[LineAmount] [float] NULL,
[LineNumber] [bigint] NULL,
[Location] [bigint] NULL,
[LocationGroup] [bigint] NULL,
[MeasuredOptionChild] [varchar] (51) NULL,
[Measurement] [float] NULL,
[Name] [varchar] (1000) NULL,
[OPTION_] [bigint] NULL,
[OptionAddSalesPriceToBase] [varchar] (51) NULL,
[OptionIncludedOption] [varchar] (51) NULL,
[OptionMaster] [bigint] NULL,
[RequiredOption] [varchar] (51) NULL,
[SalesPrice] [varchar] (51) NULL,
[SalesPriceOverriden] [varchar] (51) NULL,
[SalesQty] [varchar] (51) NULL,
[Type] [varchar] (51) NULL,
[ZeroPriceIndicator] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MeasurementUnadjusted] [float] NULL,
[OptionMandatory] [varchar] (51) NULL,
[BaseSalesPriceComponent] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/General/WorksheetLine/SAB_ConsLotOptionDetails/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO