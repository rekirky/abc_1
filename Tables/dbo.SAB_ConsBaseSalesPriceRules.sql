CREATE TABLE [dbo].[SAB_ConsBaseSalesPriceRules]
(
[AmountPercent] [numeric] (18, 2) NULL,
[CostAdjustmentDate] [date] NULL,
[CostPriceAsAtDate] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[LotStructureElement] [bigint] NULL,
[OH_BaseRuleDescription] [varchar] (255) NULL,
[OH_BaseSalesPriceRuleId] [varchar] (20) NULL,
[OH_OptionRulePriceGroupId] [varchar] (20) NULL,
[PARTITION] [bigint] NULL,
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
ALTER TABLE [dbo].[SAB_ConsBaseSalesPriceRules] ADD CONSTRAINT [PK_SAB_ConsBaseSalesPriceRules_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
