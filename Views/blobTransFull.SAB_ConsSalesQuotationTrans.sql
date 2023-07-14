create   view [blobTransFull].[SAB_ConsSalesQuotationTrans] as select 
LSN,[BaseSalesPriceComponent]
,[ChangeType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsSalesLineChangeType' and e.EnumCode=t.[ChangeType]) ,ChangeTypeEnumID=[ChangeType]
,[CostPrice]=cast([CostPrice] as numeric(18,2))
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[DiscountAmount]=cast([DiscountAmount] as numeric(18,2))
,[DiscountType]
,[DocumentSection]
,[FreeTxt]
,[ItemId]
,[LineAmount]=cast([LineAmount] as numeric(18,6))
,[LineNumber]
,[Location]
,[LocationGroup]
,[MeasuredOptionChild]=case when [MeasuredOptionChild]=1 then 'Yes' else 'No' end ,MeasuredOptionChildFlag=cast([MeasuredOptionChild] as bit)
,[Measurement]=cast([Measurement] as numeric(18,2))
,[MeasurementUnadjusted]=cast([MeasurementUnadjusted] as numeric(18,2))
,[OPTION_]
,[OptionAddSalesPriceToBase]
,[OptionIncludedOption]
,[OptionMandatory]
,[OptionMaster]
,[PARTITION]
,[QuotationJour]
,[RECID]
,[RECVERSION]
,[RevenueCategory]
,[ReviewStatus]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsSalesQuotationTransReviewStatus' and e.EnumCode=t.[ReviewStatus]) ,ReviewStatusEnumID=[ReviewStatus]
,[SalesPrice]
,[SalesPriceLocked]=case when [SalesPriceLocked]=1 then 'Yes' else 'No' end ,SalesPriceLockedFlag=cast([SalesPriceLocked] as bit)
,[SalesPriceLockedUntil]=cast([SalesPriceLockedUntil] as date)
,[SalesPriceOverriden]=case when [SalesPriceOverriden]=1 then 'Yes' else 'No' end ,SalesPriceOverridenFlag=cast([SalesPriceOverriden] as bit)
,[SalesQty]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsSalesLineType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
,[ZeroPriceIndicator]
 from blobFull.SAB_ConsSalesQuotationTrans t
GO
