CREATE EXTERNAL TABLE [blobFull].[SAB_ConsBaseSalesPriceRules]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[AmountPercent] [float] NULL,
[CostAdjustmentDate] [varchar] (40) NULL,
[CostPriceAsAtDate] [varchar] (40) NULL,
[LotStructureElement] [bigint] NULL,
[PriceUpdateBasis] [varchar] (51) NULL,
[PriceUpdateRule] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[SmartRoundingGroup] [bigint] NULL,
[OH_OptionRulePriceGroupId] [varchar] (20) NULL,
[OH_BaseSalesPriceRuleId] [varchar] (20) NULL,
[OH_BaseRuleDescription] [varchar] (255) NULL
)
WITH
(
LOCATION = N'Tables/General/Group/SAB_ConsBaseSalesPriceRules/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
