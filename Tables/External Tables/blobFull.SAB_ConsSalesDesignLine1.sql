CREATE EXTERNAL TABLE [blobFull].[SAB_ConsSalesDesignLine]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[CostPrice] [float] NULL,
[Description] [varchar] (120) NULL,
[DiscountAmount] [float] NULL,
[DiscountType] [bigint] NULL,
[DocumentSection] [bigint] NULL,
[FreeTxt] [varchar] (1000) NULL,
[ItemId] [varchar] (20) NULL,
[LineAmount] [varchar] (51) NULL,
[LineNumber] [bigint] NULL,
[Location] [bigint] NULL,
[LocationGroup] [bigint] NULL,
[MeasuredOptionChild] [varchar] (51) NULL,
[OPTION_] [bigint] NULL,
[OptionAddSalesPriceToBase] [varchar] (51) NULL,
[OptionIncludedOption] [varchar] (51) NULL,
[OptionMaster] [bigint] NULL,
[RevenueCategory] [bigint] NULL,
[SalesDesignVersion] [bigint] NULL,
[SalesPrice] [varchar] (51) NULL,
[SalesPriceOverriden] [varchar] (51) NULL,
[SalesQty] [varchar] (51) NULL,
[Type] [varchar] (51) NULL,
[ZeroPriceIndicator] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MeasuredOptionPriceOverride] [varchar] (51) NULL,
[SalesPriceLocked] [varchar] (51) NULL,
[OptionMandatory] [varchar] (51) NULL,
[SalesPriceLockedUntil] [varchar] (40) NULL,
[BaseSalesPriceComponent] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsSales/WorksheetLine/SAB_ConsSalesDesignLine/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
