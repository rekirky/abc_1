create   proc [stage].[prcLoadSAB_ConsOptionCategory] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsOptionCategory t 
where exists 
	(select 1 from stage.SAB_ConsOptionCategory s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsOptionCategory with(tablock) as t
using (select * from blobTransInc.SAB_ConsOptionCategory where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[AdminOption]=s.[AdminOption],[AdminOptionFlag]=s.[AdminOptionFlag],[CREATEDBY]=s.[CREATEDBY],[CREATEDDATETIME]=s.[CREATEDDATETIME],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DraftingRequired]=s.[DraftingRequired],[IsActive]=s.[IsActive],[IsOptionAttributesInherited]=s.[IsOptionAttributesInherited],[IsOptionAttributesInheritedFlag]=s.[IsOptionAttributesInheritedFlag],[LEVEL_]=s.[LEVEL_],[LocationPrompt]=s.[LocationPrompt],[LocationPromptFlag]=s.[LocationPromptFlag],[MeasuredOptions]=s.[MeasuredOptions],[MeasuredOptionsFlag]=s.[MeasuredOptionsFlag],[MODIFIEDBY]=s.[MODIFIEDBY],[MODIFIEDDATETIME]=s.[MODIFIEDDATETIME],[Name]=s.[Name],[NestedSetLeft]=s.[NestedSetLeft],[NestedSetRight]=s.[NestedSetRight],[OH_OptionSalesPriceReductionTolerance]=s.[OH_OptionSalesPriceReductionTolerance],[OH_PricingAmountPercent]=s.[OH_PricingAmountPercent],[OH_PricingSmartRoundingGroup]=s.[OH_PricingSmartRoundingGroup],[OH_PricingUpdateRule]=s.[OH_PricingUpdateRule],[OH_PricingUpdateRuleEnumID]=s.[OH_PricingUpdateRuleEnumID],[ParentOptionCategory]=s.[ParentOptionCategory],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[ShowMaterialPrice]=s.[ShowMaterialPrice],[ShowMaterialPriceFlag]=s.[ShowMaterialPriceFlag],[UnitId]=s.[UnitId]
when not matched then insert(
	[AdminOption],[AdminOptionFlag],[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[DraftingRequired],[IsActive],[IsOptionAttributesInherited],[IsOptionAttributesInheritedFlag],[LEVEL_],[LocationPrompt],[LocationPromptFlag],[MeasuredOptions],[MeasuredOptionsFlag],[MODIFIEDBY],[MODIFIEDDATETIME],[Name],[NestedSetLeft],[NestedSetRight],[OH_OptionSalesPriceReductionTolerance],[OH_PricingAmountPercent],[OH_PricingSmartRoundingGroup],[OH_PricingUpdateRule],[OH_PricingUpdateRuleEnumID],[ParentOptionCategory],[PARTITION],[RECID],[RECVERSION],[ShowMaterialPrice],[ShowMaterialPriceFlag],[UnitId]
)
values (
[AdminOption],[AdminOptionFlag],[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[DraftingRequired],[IsActive],[IsOptionAttributesInherited],[IsOptionAttributesInheritedFlag],[LEVEL_],[LocationPrompt],[LocationPromptFlag],[MeasuredOptions],[MeasuredOptionsFlag],[MODIFIEDBY],[MODIFIEDDATETIME],[Name],[NestedSetLeft],[NestedSetRight],[OH_OptionSalesPriceReductionTolerance],[OH_PricingAmountPercent],[OH_PricingSmartRoundingGroup],[OH_PricingUpdateRule],[OH_PricingUpdateRuleEnumID],[ParentOptionCategory],[PARTITION],[RECID],[RECVERSION],[ShowMaterialPrice],[ShowMaterialPriceFlag],[UnitId]
);

end
GO
