CREATE TABLE [dbo].[SAB_ConsSalesQuotationTrans]
(
[BaseSalesPriceComponent] [varchar] (51) NULL,
[ChangeType] [varchar] (256) NULL,
[ChangeTypeEnumID] [varchar] (51) NULL,
[CostPrice] [numeric] (18, 2) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (120) NULL,
[DiscountAmount] [numeric] (18, 2) NULL,
[DiscountType] [bigint] NULL,
[DocumentSection] [bigint] NULL,
[FreeTxt] [varchar] (1000) NULL,
[ItemId] [varchar] (20) NULL,
[LineAmount] [numeric] (18, 6) NULL,
[LineNumber] [bigint] NULL,
[Location] [bigint] NULL,
[LocationGroup] [bigint] NULL,
[MeasuredOptionChild] [varchar] (3) NULL,
[MeasuredOptionChildFlag] [bit] NULL,
[Measurement] [numeric] (18, 2) NULL,
[MeasurementUnadjusted] [numeric] (18, 2) NULL,
[OPTION_] [bigint] NULL,
[OptionAddSalesPriceToBase] [varchar] (51) NULL,
[OptionIncludedOption] [varchar] (51) NULL,
[OptionMandatory] [varchar] (51) NULL,
[OptionMaster] [bigint] NULL,
[PARTITION] [bigint] NULL,
[QuotationJour] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RevenueCategory] [bigint] NULL,
[ReviewStatus] [varchar] (256) NULL,
[ReviewStatusEnumID] [varchar] (51) NULL,
[SalesPrice] [varchar] (51) NULL,
[SalesPriceLocked] [varchar] (3) NULL,
[SalesPriceLockedFlag] [bit] NULL,
[SalesPriceLockedUntil] [date] NULL,
[SalesPriceOverriden] [varchar] (3) NULL,
[SalesPriceOverridenFlag] [bit] NULL,
[SalesQty] [varchar] (51) NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[ZeroPriceIndicator] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsSalesQuotationTrans] ADD CONSTRAINT [PK_SAB_ConsSalesQuotationTrans_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO