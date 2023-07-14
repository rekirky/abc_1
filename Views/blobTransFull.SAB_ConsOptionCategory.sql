create   view [blobTransFull].[SAB_ConsOptionCategory] as select 
LSN,[AdminOption]=case when [AdminOption]=1 then 'Yes' else 'No' end ,AdminOptionFlag=cast([AdminOption] as bit)
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DraftingRequired]
,[IsActive]
,[IsOptionAttributesInherited]=case when [IsOptionAttributesInherited]=1 then 'Yes' else 'No' end ,IsOptionAttributesInheritedFlag=cast([IsOptionAttributesInherited] as bit)
,[LEVEL_]
,[LocationPrompt]=case when [LocationPrompt]=1 then 'Yes' else 'No' end ,LocationPromptFlag=cast([LocationPrompt] as bit)
,[MeasuredOptions]=case when [MeasuredOptions]=1 then 'Yes' else 'No' end ,MeasuredOptionsFlag=cast([MeasuredOptions] as bit)
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[Name]
,[NestedSetLeft]
,[NestedSetRight]
,[OH_OptionSalesPriceReductionTolerance]=cast([OH_OptionSalesPriceReductionTolerance] as numeric(18,2))
,[OH_PricingAmountPercent]=cast([OH_PricingAmountPercent] as numeric(18,2))
,[OH_PricingSmartRoundingGroup]
,[OH_PricingUpdateRule]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsBaseSalesPriceUpdateRule' and e.EnumCode=t.[OH_PricingUpdateRule]) ,OH_PricingUpdateRuleEnumID=[OH_PricingUpdateRule]
,[ParentOptionCategory]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ShowMaterialPrice]=case when [ShowMaterialPrice]=1 then 'Yes' else 'No' end ,ShowMaterialPriceFlag=cast([ShowMaterialPrice] as bit)
,[UnitId]
 from blobFull.SAB_ConsOptionCategory t
GO
