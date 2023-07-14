create   proc [stage].[prcLoadSAB_ConsSalesDesignLine] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsSalesDesignLine t 
where exists 
	(select 1 from stage.SAB_ConsSalesDesignLine s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsSalesDesignLine with(tablock) as t
using (select * from blobTransInc.SAB_ConsSalesDesignLine where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[BaseSalesPriceComponent]=s.[BaseSalesPriceComponent],[CostPrice]=s.[CostPrice],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[Description]=s.[Description],[DiscountAmount]=s.[DiscountAmount],[DiscountType]=s.[DiscountType],[DocumentSection]=s.[DocumentSection],[FreeTxt]=s.[FreeTxt],[ItemId]=s.[ItemId],[LineAmount]=s.[LineAmount],[LineNumber]=s.[LineNumber],[Location]=s.[Location],[LocationGroup]=s.[LocationGroup],[MeasuredOptionChild]=s.[MeasuredOptionChild],[MeasuredOptionChildFlag]=s.[MeasuredOptionChildFlag],[MeasuredOptionPriceOverride]=s.[MeasuredOptionPriceOverride],[MeasuredOptionPriceOverrideFlag]=s.[MeasuredOptionPriceOverrideFlag],[OPTION_]=s.[OPTION_],[OptionAddSalesPriceToBase]=s.[OptionAddSalesPriceToBase],[OptionIncludedOption]=s.[OptionIncludedOption],[OptionMandatory]=s.[OptionMandatory],[OptionMaster]=s.[OptionMaster],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[RevenueCategory]=s.[RevenueCategory],[SalesDesignVersion]=s.[SalesDesignVersion],[SalesPrice]=s.[SalesPrice],[SalesPriceLocked]=s.[SalesPriceLocked],[SalesPriceLockedFlag]=s.[SalesPriceLockedFlag],[SalesPriceLockedUntil]=s.[SalesPriceLockedUntil],[SalesPriceOverriden]=s.[SalesPriceOverriden],[SalesPriceOverridenFlag]=s.[SalesPriceOverridenFlag],[SalesQty]=s.[SalesQty],[Type]=s.[Type],[TypeEnumID]=s.[TypeEnumID],[ZeroPriceIndicator]=s.[ZeroPriceIndicator]
when not matched then insert(
	[BaseSalesPriceComponent],[CostPrice],[DataLakeModified_DateTime],[Description],[DiscountAmount],[DiscountType],[DocumentSection],[FreeTxt],[ItemId],[LineAmount],[LineNumber],[Location],[LocationGroup],[MeasuredOptionChild],[MeasuredOptionChildFlag],[MeasuredOptionPriceOverride],[MeasuredOptionPriceOverrideFlag],[OPTION_],[OptionAddSalesPriceToBase],[OptionIncludedOption],[OptionMandatory],[OptionMaster],[PARTITION],[RECID],[RECVERSION],[RevenueCategory],[SalesDesignVersion],[SalesPrice],[SalesPriceLocked],[SalesPriceLockedFlag],[SalesPriceLockedUntil],[SalesPriceOverriden],[SalesPriceOverridenFlag],[SalesQty],[Type],[TypeEnumID],[ZeroPriceIndicator]
)
values (
[BaseSalesPriceComponent],[CostPrice],[DataLakeModified_DateTime],[Description],[DiscountAmount],[DiscountType],[DocumentSection],[FreeTxt],[ItemId],[LineAmount],[LineNumber],[Location],[LocationGroup],[MeasuredOptionChild],[MeasuredOptionChildFlag],[MeasuredOptionPriceOverride],[MeasuredOptionPriceOverrideFlag],[OPTION_],[OptionAddSalesPriceToBase],[OptionIncludedOption],[OptionMandatory],[OptionMaster],[PARTITION],[RECID],[RECVERSION],[RevenueCategory],[SalesDesignVersion],[SalesPrice],[SalesPriceLocked],[SalesPriceLockedFlag],[SalesPriceLockedUntil],[SalesPriceOverriden],[SalesPriceOverridenFlag],[SalesQty],[Type],[TypeEnumID],[ZeroPriceIndicator]
);

end
GO
