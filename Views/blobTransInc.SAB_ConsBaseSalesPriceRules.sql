create   view [blobTransInc].[SAB_ConsBaseSalesPriceRules] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[AmountPercent]=cast([AmountPercent] as numeric(18,2))
,[CostAdjustmentDate]=cast([CostAdjustmentDate] as date)
,[CostPriceAsAtDate]=cast([CostPriceAsAtDate] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LotStructureElement]
,[OH_BaseRuleDescription]
,[OH_BaseSalesPriceRuleId]
,[OH_OptionRulePriceGroupId]
,[PARTITION]
,[PriceUpdateBasis]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsBaseSalesPriceUpdateBasis' and e.EnumCode=t.[PriceUpdateBasis]) ,PriceUpdateBasisEnumID=[PriceUpdateBasis]
,[PriceUpdateRule]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsBaseSalesPriceUpdateRule' and e.EnumCode=t.[PriceUpdateRule]) ,PriceUpdateRuleEnumID=[PriceUpdateRule]
,[RECID]
,[RECVERSION]
,[SmartRoundingGroup]
 from stage.SAB_ConsBaseSalesPriceRules t
GO
