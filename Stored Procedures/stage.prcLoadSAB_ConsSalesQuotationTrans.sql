create   proc [stage].[prcLoadSAB_ConsSalesQuotationTrans] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsSalesQuotationTrans t 
where exists 
	(select 1 from stage.SAB_ConsSalesQuotationTrans s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsSalesQuotationTrans with(tablock) as t
using (select * from blobTransInc.SAB_ConsSalesQuotationTrans where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[BaseSalesPriceComponent]=s.[BaseSalesPriceComponent],[ChangeType]=s.[ChangeType],[ChangeTypeEnumID]=s.[ChangeTypeEnumID],[CostPrice]=s.[CostPrice],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[Description]=s.[Description],[DiscountAmount]=s.[DiscountAmount],[DiscountType]=s.[DiscountType],[DocumentSection]=s.[DocumentSection],[FreeTxt]=s.[FreeTxt],[ItemId]=s.[ItemId],[LineAmount]=s.[LineAmount],[LineNumber]=s.[LineNumber],[Location]=s.[Location],[LocationGroup]=s.[LocationGroup],[MeasuredOptionChild]=s.[MeasuredOptionChild],[MeasuredOptionChildFlag]=s.[MeasuredOptionChildFlag],[Measurement]=s.[Measurement],[MeasurementUnadjusted]=s.[MeasurementUnadjusted],[OPTION_]=s.[OPTION_],[OptionAddSalesPriceToBase]=s.[OptionAddSalesPriceToBase],[OptionIncludedOption]=s.[OptionIncludedOption],[OptionMandatory]=s.[OptionMandatory],[OptionMaster]=s.[OptionMaster],[PARTITION]=s.[PARTITION],[QuotationJour]=s.[QuotationJour],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[RevenueCategory]=s.[RevenueCategory],[ReviewStatus]=s.[ReviewStatus],[ReviewStatusEnumID]=s.[ReviewStatusEnumID],[SalesPrice]=s.[SalesPrice],[SalesPriceLocked]=s.[SalesPriceLocked],[SalesPriceLockedFlag]=s.[SalesPriceLockedFlag],[SalesPriceLockedUntil]=s.[SalesPriceLockedUntil],[SalesPriceOverriden]=s.[SalesPriceOverriden],[SalesPriceOverridenFlag]=s.[SalesPriceOverridenFlag],[SalesQty]=s.[SalesQty],[Type]=s.[Type],[TypeEnumID]=s.[TypeEnumID],[ZeroPriceIndicator]=s.[ZeroPriceIndicator]
when not matched then insert(
	[BaseSalesPriceComponent],[ChangeType],[ChangeTypeEnumID],[CostPrice],[DataLakeModified_DateTime],[Description],[DiscountAmount],[DiscountType],[DocumentSection],[FreeTxt],[ItemId],[LineAmount],[LineNumber],[Location],[LocationGroup],[MeasuredOptionChild],[MeasuredOptionChildFlag],[Measurement],[MeasurementUnadjusted],[OPTION_],[OptionAddSalesPriceToBase],[OptionIncludedOption],[OptionMandatory],[OptionMaster],[PARTITION],[QuotationJour],[RECID],[RECVERSION],[RevenueCategory],[ReviewStatus],[ReviewStatusEnumID],[SalesPrice],[SalesPriceLocked],[SalesPriceLockedFlag],[SalesPriceLockedUntil],[SalesPriceOverriden],[SalesPriceOverridenFlag],[SalesQty],[Type],[TypeEnumID],[ZeroPriceIndicator]
)
values (
[BaseSalesPriceComponent],[ChangeType],[ChangeTypeEnumID],[CostPrice],[DataLakeModified_DateTime],[Description],[DiscountAmount],[DiscountType],[DocumentSection],[FreeTxt],[ItemId],[LineAmount],[LineNumber],[Location],[LocationGroup],[MeasuredOptionChild],[MeasuredOptionChildFlag],[Measurement],[MeasurementUnadjusted],[OPTION_],[OptionAddSalesPriceToBase],[OptionIncludedOption],[OptionMandatory],[OptionMaster],[PARTITION],[QuotationJour],[RECID],[RECVERSION],[RevenueCategory],[ReviewStatus],[ReviewStatusEnumID],[SalesPrice],[SalesPriceLocked],[SalesPriceLockedFlag],[SalesPriceLockedUntil],[SalesPriceOverriden],[SalesPriceOverridenFlag],[SalesQty],[Type],[TypeEnumID],[ZeroPriceIndicator]
);

end
GO
