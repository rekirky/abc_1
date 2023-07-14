CREATE TABLE [dbo].[SAB_ConsLotOptionDetailsHistory]
(
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DiscountAmount] [numeric] (18, 2) NULL,
[DiscountType] [bigint] NULL,
[DynamicBOMDate] [date] NULL,
[FinancialInstance] [bigint] NULL,
[ItemId] [varchar] (20) NULL,
[LineAmount] [numeric] (18, 2) NULL,
[Location] [bigint] NULL,
[LocationGroup] [bigint] NULL,
[LotStart] [bigint] NULL,
[MeasuredOptionChild] [varchar] (3) NULL,
[MeasuredOptionChildFlag] [bit] NULL,
[Measurement] [numeric] (18, 2) NULL,
[MeasurementUnadjusted] [numeric] (18, 2) NULL,
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
[SalesOpportunity] [bigint] NULL,
[SalesPrice] [varchar] (51) NULL,
[SalesQty] [varchar] (51) NULL,
[Source] [varchar] (256) NULL,
[SourceEnumID] [varchar] (51) NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[ZeroPriceIndicator] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsLotOptionDetailsHistory] ADD CONSTRAINT [PK_SAB_ConsLotOptionDetailsHistory_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
