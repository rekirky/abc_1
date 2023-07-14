CREATE TABLE [stage].[SAB_ConsBaseSalesPriceRules]
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
) ON [PRIMARY]
GO
