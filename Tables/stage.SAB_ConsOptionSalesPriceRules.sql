CREATE TABLE [stage].[SAB_ConsOptionSalesPriceRules]
(
[Instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[AmountPercent] [float] NULL,
[BuildingTypeId] [varchar] (20) NULL,
[FacadeId] [varchar] (20) NULL,
[LotStructureElement] [bigint] NULL,
[OptionCategory] [bigint] NULL,
[PriceUpdateBasis] [varchar] (51) NULL,
[PriceUpdateRule] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[InclMeasuredOptions] [varchar] (51) NULL,
[PriceByBuildingType] [varchar] (51) NULL,
[PriceByFacade] [varchar] (51) NULL,
[LotStructureElementCalc] [bigint] NULL,
[OPTION_] [bigint] NULL,
[SmartRoundingGroup] [bigint] NULL,
[OH_OptionRulePriceGroupId] [varchar] (20) NULL,
[OH_OptionSalesPriceRuleId] [varchar] (20) NULL,
[OH_OptionRuleDescription] [varchar] (255) NULL,
[OH_OptionParentPricingOnly] [varchar] (51) NULL,
[OH_IncludedChildOptionElement] [bigint] NULL
) ON [PRIMARY]
GO