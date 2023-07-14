create   proc [stage].[prcLoadSAB_ConsItemPrice] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsItemPrice t 
where exists 
	(select 1 from stage.SAB_ConsItemPrice s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsItemPrice with(tablock) as t
using (select * from blobTransInc.SAB_ConsItemPrice where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[BuildingTypeId]=s.[BuildingTypeId],[ChangeReason]=s.[ChangeReason],[CostCategory]=s.[CostCategory],[CREATEDBY]=s.[CREATEDBY],[CREATEDDATETIME]=s.[CREATEDDATETIME],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[FacadeId]=s.[FacadeId],[ItemId]=s.[ItemId],[Location]=s.[Location],[LocationGroup]=s.[LocationGroup],[Lot]=s.[Lot],[LotStructureElement]=s.[LotStructureElement],[MasterAgreementVersion]=s.[MasterAgreementVersion],[MODIFIEDBY]=s.[MODIFIEDBY],[MODIFIEDDATETIME]=s.[MODIFIEDDATETIME],[OH_IncludeParentPricing]=s.[OH_IncludeParentPricing],[OH_OptionUpgradePrice]=s.[OH_OptionUpgradePrice],[OPTION_]=s.[OPTION_],[ParentOptionMaster]=s.[ParentOptionMaster],[PARTITION]=s.[PARTITION],[Price]=s.[Price],[PriceType]=s.[PriceType],[PriceTypeEnumID]=s.[PriceTypeEnumID],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[UnitId]=s.[UnitId],[ValidFrom]=s.[ValidFrom],[ValidTo]=s.[ValidTo],[Vendor]=s.[Vendor],[ZeroPriceIndicator]=s.[ZeroPriceIndicator]
when not matched then insert(
	[BuildingTypeId],[ChangeReason],[CostCategory],[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[FacadeId],[ItemId],[Location],[LocationGroup],[Lot],[LotStructureElement],[MasterAgreementVersion],[MODIFIEDBY],[MODIFIEDDATETIME],[OH_IncludeParentPricing],[OH_OptionUpgradePrice],[OPTION_],[ParentOptionMaster],[PARTITION],[Price],[PriceType],[PriceTypeEnumID],[RECID],[RECVERSION],[UnitId],[ValidFrom],[ValidTo],[Vendor],[ZeroPriceIndicator]
)
values (
[BuildingTypeId],[ChangeReason],[CostCategory],[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[FacadeId],[ItemId],[Location],[LocationGroup],[Lot],[LotStructureElement],[MasterAgreementVersion],[MODIFIEDBY],[MODIFIEDDATETIME],[OH_IncludeParentPricing],[OH_OptionUpgradePrice],[OPTION_],[ParentOptionMaster],[PARTITION],[Price],[PriceType],[PriceTypeEnumID],[RECID],[RECVERSION],[UnitId],[ValidFrom],[ValidTo],[Vendor],[ZeroPriceIndicator]
);

end
GO
