CREATE TABLE [dbo].[SAB_ConsOptionCategory]
(
[AdminOption] [varchar] (3) NULL,
[AdminOptionFlag] [bit] NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DraftingRequired] [varchar] (51) NULL,
[IsActive] [varchar] (51) NULL,
[IsOptionAttributesInherited] [varchar] (3) NULL,
[IsOptionAttributesInheritedFlag] [bit] NULL,
[LEVEL_] [bigint] NULL,
[LocationPrompt] [varchar] (3) NULL,
[LocationPromptFlag] [bit] NULL,
[MeasuredOptions] [varchar] (3) NULL,
[MeasuredOptionsFlag] [bit] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [date] NULL,
[Name] [varchar] (254) NULL,
[NestedSetLeft] [bigint] NULL,
[NestedSetRight] [bigint] NULL,
[OH_OptionSalesPriceReductionTolerance] [numeric] (18, 2) NULL,
[OH_PricingAmountPercent] [numeric] (18, 2) NULL,
[OH_PricingSmartRoundingGroup] [bigint] NULL,
[OH_PricingUpdateRule] [varchar] (256) NULL,
[OH_PricingUpdateRuleEnumID] [varchar] (51) NULL,
[ParentOptionCategory] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ShowMaterialPrice] [varchar] (3) NULL,
[ShowMaterialPriceFlag] [bit] NULL,
[UnitId] [varchar] (10) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsOptionCategory] ADD CONSTRAINT [PK_SAB_ConsOptionCategory_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
