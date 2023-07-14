create   view [blobTransFull].[SAB_ConsOption] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[DescriptionPurch]
,[DescriptionSales]
,[DesignCenterPricing]=case when [DesignCenterPricing]=1 then 'Yes' else 'No' end ,DesignCenterPricingFlag=cast([DesignCenterPricing] as bit)
,[DocumentSection]
,[OH_DescriptionInternal]
,[OH_DescriptionMarketing]
,[OH_DrawingCode]
,[OH_DrawingRequirement]
,[OH_MarketingShowExternally]
,[OH_OptionSalesPriceReductionTolerance]=cast([OH_OptionSalesPriceReductionTolerance] as numeric(18,2))
,[OH_OverrideCategoryTolerance]
,[OptionCategory]
,[OptionId]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Subfloor]
,[UseAdjustedMeasurement]=case when [UseAdjustedMeasurement]=1 then 'Yes' else 'No' end ,UseAdjustedMeasurementFlag=cast([UseAdjustedMeasurement] as bit)
,[ValidFrom]=cast([ValidFrom] as date)
,[ValidTo]=cast(case when [ValidTo] < cast('1901-01-01' as date) or [ValidTo] is null then '9000-01-01' else [ValidTo] end as date)
 from blobFull.SAB_ConsOption t
GO
