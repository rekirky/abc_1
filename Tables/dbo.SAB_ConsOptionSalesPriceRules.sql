CREATE TABLE [dbo].[SAB_ConsOptionSalesPriceRules]
(
[AmountPercent] [numeric] (18, 2) NULL,
[BuildingTypeId] [varchar] (20) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FacadeId] [varchar] (20) NULL,
[InclMeasuredOptions] [varchar] (3) NULL,
[InclMeasuredOptionsFlag] [bit] NULL,
[LotStructureElement] [bigint] NULL,
[LotStructureElementCalc] [bigint] NULL,
[OH_IncludedChildOptionElement] [bigint] NULL,
[OH_OptionParentPricingOnly] [varchar] (51) NULL,
[OH_OptionRuleDescription] [varchar] (255) NULL,
[OH_OptionRulePriceGroupId] [varchar] (20) NULL,
[OH_OptionSalesPriceRuleId] [varchar] (20) NULL,
[OPTION_] [bigint] NULL,
[OptionCategory] [bigint] NULL,
[PARTITION] [bigint] NULL,
[PriceByBuildingType] [varchar] (3) NULL,
[PriceByBuildingTypeFlag] [bit] NULL,
[PriceByFacade] [varchar] (3) NULL,
[PriceByFacadeFlag] [bit] NULL,
[PriceUpdateBasis] [varchar] (256) NULL,
[PriceUpdateBasisEnumID] [varchar] (51) NULL,
[PriceUpdateRule] [varchar] (256) NULL,
[PriceUpdateRuleEnumID] [varchar] (51) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[SmartRoundingGroup] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsOptionSalesPriceRules] ADD CONSTRAINT [PK_SAB_ConsOptionSalesPriceRules_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
