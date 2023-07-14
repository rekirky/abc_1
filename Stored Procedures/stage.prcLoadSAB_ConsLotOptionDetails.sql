create   proc [stage].[prcLoadSAB_ConsLotOptionDetails] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsLotOptionDetails t 
where exists 
	(select 1 from stage.SAB_ConsLotOptionDetails s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsLotOptionDetails with(tablock) as t
using (select * from blobTransInc.SAB_ConsLotOptionDetails where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[BaseSalesPriceComponent]=s.[BaseSalesPriceComponent],[CostPrice]=s.[CostPrice],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DiscountAmount]=s.[DiscountAmount],[DiscountType]=s.[DiscountType],[FinancialInstance]=s.[FinancialInstance],[ItemId]=s.[ItemId],[LineAmount]=s.[LineAmount],[LineNumber]=s.[LineNumber],[Location]=s.[Location],[LocationGroup]=s.[LocationGroup],[MeasuredOptionChild]=s.[MeasuredOptionChild],[MeasuredOptionChildFlag]=s.[MeasuredOptionChildFlag],[Measurement]=s.[Measurement],[MeasurementUnadjusted]=s.[MeasurementUnadjusted],[Name]=s.[Name],[OPTION_]=s.[OPTION_],[OptionAddSalesPriceToBase]=s.[OptionAddSalesPriceToBase],[OptionIncludedOption]=s.[OptionIncludedOption],[OptionIncludedOptionFlag]=s.[OptionIncludedOptionFlag],[OptionMandatory]=s.[OptionMandatory],[OptionMandatoryFlag]=s.[OptionMandatoryFlag],[OptionMaster]=s.[OptionMaster],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[RequiredOption]=s.[RequiredOption],[RequiredOptionFlag]=s.[RequiredOptionFlag],[SalesPrice]=s.[SalesPrice],[SalesPriceOverriden]=s.[SalesPriceOverriden],[SalesPriceOverridenFlag]=s.[SalesPriceOverridenFlag],[SalesQty]=s.[SalesQty],[Type]=s.[Type],[TypeEnumID]=s.[TypeEnumID],[ZeroPriceIndicator]=s.[ZeroPriceIndicator]
when not matched then insert(
	[BaseSalesPriceComponent],[CostPrice],[DataLakeModified_DateTime],[DiscountAmount],[DiscountType],[FinancialInstance],[ItemId],[LineAmount],[LineNumber],[Location],[LocationGroup],[MeasuredOptionChild],[MeasuredOptionChildFlag],[Measurement],[MeasurementUnadjusted],[Name],[OPTION_],[OptionAddSalesPriceToBase],[OptionIncludedOption],[OptionIncludedOptionFlag],[OptionMandatory],[OptionMandatoryFlag],[OptionMaster],[PARTITION],[RECID],[RECVERSION],[RequiredOption],[RequiredOptionFlag],[SalesPrice],[SalesPriceOverriden],[SalesPriceOverridenFlag],[SalesQty],[Type],[TypeEnumID],[ZeroPriceIndicator]
)
values (
[BaseSalesPriceComponent],[CostPrice],[DataLakeModified_DateTime],[DiscountAmount],[DiscountType],[FinancialInstance],[ItemId],[LineAmount],[LineNumber],[Location],[LocationGroup],[MeasuredOptionChild],[MeasuredOptionChildFlag],[Measurement],[MeasurementUnadjusted],[Name],[OPTION_],[OptionAddSalesPriceToBase],[OptionIncludedOption],[OptionIncludedOptionFlag],[OptionMandatory],[OptionMandatoryFlag],[OptionMaster],[PARTITION],[RECID],[RECVERSION],[RequiredOption],[RequiredOptionFlag],[SalesPrice],[SalesPriceOverriden],[SalesPriceOverridenFlag],[SalesQty],[Type],[TypeEnumID],[ZeroPriceIndicator]
);

end
GO
