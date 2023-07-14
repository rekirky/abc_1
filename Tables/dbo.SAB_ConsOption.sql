CREATE TABLE [dbo].[SAB_ConsOption]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (120) NULL,
[DescriptionPurch] [varchar] (1000) NULL,
[DescriptionSales] [varchar] (1000) NULL,
[DesignCenterPricing] [varchar] (3) NULL,
[DesignCenterPricingFlag] [bit] NULL,
[DocumentSection] [bigint] NULL,
[OH_DescriptionInternal] [varchar] (1000) NULL,
[OH_DescriptionMarketing] [varchar] (1000) NULL,
[OH_DrawingCode] [varchar] (10) NULL,
[OH_DrawingRequirement] [varchar] (51) NULL,
[OH_MarketingShowExternally] [varchar] (51) NULL,
[OH_OptionSalesPriceReductionTolerance] [numeric] (18, 2) NULL,
[OH_OverrideCategoryTolerance] [varchar] (51) NULL,
[OptionCategory] [bigint] NULL,
[OptionId] [varchar] (10) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Subfloor] [bigint] NULL,
[UseAdjustedMeasurement] [varchar] (3) NULL,
[UseAdjustedMeasurementFlag] [bit] NULL,
[ValidFrom] [date] NULL,
[ValidTo] [date] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsOption] ADD CONSTRAINT [PK_SAB_ConsOption_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_Sab_ConsOption] ON [dbo].[SAB_ConsOption] ([RECID]) ON [PRIMARY]
GO
