create   view [blobTransFull].[SAB_ConsSalesDesignLine] as select 
LSN,[BaseSalesPriceComponent]
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
,[MeasuredOptionPriceOverride]=case when [MeasuredOptionPriceOverride]=1 then 'Yes' else 'No' end ,MeasuredOptionPriceOverrideFlag=cast([MeasuredOptionPriceOverride] as bit)
,[OPTION_]
,[OptionAddSalesPriceToBase]
,[OptionIncludedOption]
,[OptionMandatory]
,[OptionMaster]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[RevenueCategory]
,[SalesDesignVersion]
,[SalesPrice]
,[SalesPriceLocked]=case when [SalesPriceLocked]=1 then 'Yes' else 'No' end ,SalesPriceLockedFlag=cast([SalesPriceLocked] as bit)
,[SalesPriceLockedUntil]=cast([SalesPriceLockedUntil] as date)
,[SalesPriceOverriden]=case when [SalesPriceOverriden]=1 then 'Yes' else 'No' end ,SalesPriceOverridenFlag=cast([SalesPriceOverriden] as bit)
,[SalesQty]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsSalesLineType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
,[ZeroPriceIndicator]
 from blobFull.SAB_ConsSalesDesignLine t
GO
