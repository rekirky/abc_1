create   proc [stage].[prcLoadSAB_ConsOption] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsOption t 
where exists 
	(select 1 from stage.SAB_ConsOption s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsOption with(tablock) as t
using (select * from blobTransInc.SAB_ConsOption where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[Description]=s.[Description],[DescriptionPurch]=s.[DescriptionPurch],[DescriptionSales]=s.[DescriptionSales],[DesignCenterPricing]=s.[DesignCenterPricing],[DesignCenterPricingFlag]=s.[DesignCenterPricingFlag],[DocumentSection]=s.[DocumentSection],[OH_DescriptionInternal]=s.[OH_DescriptionInternal],[OH_DescriptionMarketing]=s.[OH_DescriptionMarketing],[OH_DrawingCode]=s.[OH_DrawingCode],[OH_DrawingRequirement]=s.[OH_DrawingRequirement],[OH_MarketingShowExternally]=s.[OH_MarketingShowExternally],[OH_OptionSalesPriceReductionTolerance]=s.[OH_OptionSalesPriceReductionTolerance],[OH_OverrideCategoryTolerance]=s.[OH_OverrideCategoryTolerance],[OptionCategory]=s.[OptionCategory],[OptionId]=s.[OptionId],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[Subfloor]=s.[Subfloor],[UseAdjustedMeasurement]=s.[UseAdjustedMeasurement],[UseAdjustedMeasurementFlag]=s.[UseAdjustedMeasurementFlag],[ValidFrom]=s.[ValidFrom],[ValidTo]=s.[ValidTo]
when not matched then insert(
	[DataLakeModified_DateTime],[Description],[DescriptionPurch],[DescriptionSales],[DesignCenterPricing],[DesignCenterPricingFlag],[DocumentSection],[OH_DescriptionInternal],[OH_DescriptionMarketing],[OH_DrawingCode],[OH_DrawingRequirement],[OH_MarketingShowExternally],[OH_OptionSalesPriceReductionTolerance],[OH_OverrideCategoryTolerance],[OptionCategory],[OptionId],[PARTITION],[RECID],[RECVERSION],[Subfloor],[UseAdjustedMeasurement],[UseAdjustedMeasurementFlag],[ValidFrom],[ValidTo]
)
values (
[DataLakeModified_DateTime],[Description],[DescriptionPurch],[DescriptionSales],[DesignCenterPricing],[DesignCenterPricingFlag],[DocumentSection],[OH_DescriptionInternal],[OH_DescriptionMarketing],[OH_DrawingCode],[OH_DrawingRequirement],[OH_MarketingShowExternally],[OH_OptionSalesPriceReductionTolerance],[OH_OverrideCategoryTolerance],[OptionCategory],[OptionId],[PARTITION],[RECID],[RECVERSION],[Subfloor],[UseAdjustedMeasurement],[UseAdjustedMeasurementFlag],[ValidFrom],[ValidTo]
);

end
GO
