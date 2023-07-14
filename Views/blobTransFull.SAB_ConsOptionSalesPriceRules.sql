create   view [blobTransFull].[SAB_ConsOptionSalesPriceRules] as select 
LSN,[AmountPercent]=cast([AmountPercent] as numeric(18,2))
,[BuildingTypeId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FacadeId]
,[InclMeasuredOptions]=case when [InclMeasuredOptions]=1 then 'Yes' else 'No' end ,InclMeasuredOptionsFlag=cast([InclMeasuredOptions] as bit)
,[LotStructureElement]
,[LotStructureElementCalc]
,[OH_IncludedChildOptionElement]
,[OH_OptionParentPricingOnly]
,[OH_OptionRuleDescription]
,[OH_OptionRulePriceGroupId]
,[OH_OptionSalesPriceRuleId]
,[OPTION_]
,[OptionCategory]
,[PARTITION]
,[PriceByBuildingType]=case when [PriceByBuildingType]=1 then 'Yes' else 'No' end ,PriceByBuildingTypeFlag=cast([PriceByBuildingType] as bit)
,[PriceByFacade]=case when [PriceByFacade]=1 then 'Yes' else 'No' end ,PriceByFacadeFlag=cast([PriceByFacade] as bit)
,[PriceUpdateBasis]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsOptionSalesPriceUpdateBasis' and e.EnumCode=t.[PriceUpdateBasis]) ,PriceUpdateBasisEnumID=[PriceUpdateBasis]
,[PriceUpdateRule]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsOptionSalesPriceUpdateRule' and e.EnumCode=t.[PriceUpdateRule]) ,PriceUpdateRuleEnumID=[PriceUpdateRule]
,[RECID]
,[RECVERSION]
,[SmartRoundingGroup]
 from blobFull.SAB_ConsOptionSalesPriceRules t
GO
