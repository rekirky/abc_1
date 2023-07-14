create   proc [stage].[prcLoadSAB_ConsLotOptionDetailsHistory] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsLotOptionDetailsHistory t 
where exists 
	(select 1 from stage.SAB_ConsLotOptionDetailsHistory s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsLotOptionDetailsHistory with(tablock) as t
using (select * from blobTransInc.SAB_ConsLotOptionDetailsHistory where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[CREATEDBY]=s.[CREATEDBY],[CREATEDDATETIME]=s.[CREATEDDATETIME],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DiscountAmount]=s.[DiscountAmount],[DiscountType]=s.[DiscountType],[DynamicBOMDate]=s.[DynamicBOMDate],[FinancialInstance]=s.[FinancialInstance],[ItemId]=s.[ItemId],[LineAmount]=s.[LineAmount],[Location]=s.[Location],[LocationGroup]=s.[LocationGroup],[LotStart]=s.[LotStart],[MeasuredOptionChild]=s.[MeasuredOptionChild],[MeasuredOptionChildFlag]=s.[MeasuredOptionChildFlag],[Measurement]=s.[Measurement],[MeasurementUnadjusted]=s.[MeasurementUnadjusted],[OPTION_]=s.[OPTION_],[OptionAddSalesPriceToBase]=s.[OptionAddSalesPriceToBase],[OptionIncludedOption]=s.[OptionIncludedOption],[OptionIncludedOptionFlag]=s.[OptionIncludedOptionFlag],[OptionMandatory]=s.[OptionMandatory],[OptionMandatoryFlag]=s.[OptionMandatoryFlag],[OptionMaster]=s.[OptionMaster],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[SalesOpportunity]=s.[SalesOpportunity],[SalesPrice]=s.[SalesPrice],[SalesQty]=s.[SalesQty],[Source]=s.[Source],[SourceEnumID]=s.[SourceEnumID],[Type]=s.[Type],[TypeEnumID]=s.[TypeEnumID],[ZeroPriceIndicator]=s.[ZeroPriceIndicator]
when not matched then insert(
	[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[DiscountAmount],[DiscountType],[DynamicBOMDate],[FinancialInstance],[ItemId],[LineAmount],[Location],[LocationGroup],[LotStart],[MeasuredOptionChild],[MeasuredOptionChildFlag],[Measurement],[MeasurementUnadjusted],[OPTION_],[OptionAddSalesPriceToBase],[OptionIncludedOption],[OptionIncludedOptionFlag],[OptionMandatory],[OptionMandatoryFlag],[OptionMaster],[PARTITION],[RECID],[RECVERSION],[SalesOpportunity],[SalesPrice],[SalesQty],[Source],[SourceEnumID],[Type],[TypeEnumID],[ZeroPriceIndicator]
)
values (
[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[DiscountAmount],[DiscountType],[DynamicBOMDate],[FinancialInstance],[ItemId],[LineAmount],[Location],[LocationGroup],[LotStart],[MeasuredOptionChild],[MeasuredOptionChildFlag],[Measurement],[MeasurementUnadjusted],[OPTION_],[OptionAddSalesPriceToBase],[OptionIncludedOption],[OptionIncludedOptionFlag],[OptionMandatory],[OptionMandatoryFlag],[OptionMaster],[PARTITION],[RECID],[RECVERSION],[SalesOpportunity],[SalesPrice],[SalesQty],[Source],[SourceEnumID],[Type],[TypeEnumID],[ZeroPriceIndicator]
);

end
GO
