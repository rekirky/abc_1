CREATE TABLE [dbo].[SAB_ConsLotOptionDetails]
(
[BaseSalesPriceComponent] [varchar] (51) NULL,
[CostPrice] [numeric] (18, 2) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DiscountAmount] [numeric] (18, 2) NULL,
[DiscountType] [bigint] NULL,
[FinancialInstance] [bigint] NULL,
[ItemId] [varchar] (20) NULL,
[LineAmount] [numeric] (18, 2) NULL,
[LineNumber] [bigint] NULL,
[Location] [bigint] NULL,
[LocationGroup] [bigint] NULL,
[MeasuredOptionChild] [varchar] (3) NULL,
[MeasuredOptionChildFlag] [bit] NULL,
[Measurement] [numeric] (18, 2) NULL,
[MeasurementUnadjusted] [numeric] (18, 2) NULL,
[Name] [varchar] (1000) NULL,
[OPTION_] [bigint] NULL,
[OptionAddSalesPriceToBase] [varchar] (51) NULL,
[OptionIncludedOption] [varchar] (3) NULL,
[OptionIncludedOptionFlag] [bit] NULL,
[OptionMandatory] [varchar] (3) NULL,
[OptionMandatoryFlag] [bit] NULL,
[OptionMaster] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RequiredOption] [varchar] (3) NULL,
[RequiredOptionFlag] [bit] NULL,
[SalesPrice] [varchar] (51) NULL,
[SalesPriceOverriden] [varchar] (3) NULL,
[SalesPriceOverridenFlag] [bit] NULL,
[SalesQty] [varchar] (51) NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[ZeroPriceIndicator] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsLotOptionDetails] ADD CONSTRAINT [PK_SAB_ConsLotOptionDetails_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[SAB_ConsLotOptionDetails] TO [Eliant]
GO
