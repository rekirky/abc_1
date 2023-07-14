CREATE EXTERNAL TABLE [blobFull].[SAB_ConsOptionSalesPriceRules]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
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
)
WITH
(
LOCATION = N'Tables/General/Group/SAB_ConsOptionSalesPriceRules/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
