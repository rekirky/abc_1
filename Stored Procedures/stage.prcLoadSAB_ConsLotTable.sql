create   proc [stage].[prcLoadSAB_ConsLotTable] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsLotTable t 
where exists 
	(select 1 from stage.SAB_ConsLotTable s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsLotTable with(tablock) as t
using (select * from blobTransInc.SAB_ConsLotTable where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[ACCRUED]=s.[ACCRUED],[ACCRUEDFlag]=s.[ACCRUEDFlag],[BuildingTypeId]=s.[BuildingTypeId],[BuyerOwned]=s.[BuyerOwned],[BuyerOwnedFlag]=s.[BuyerOwnedFlag],[CLOSED]=s.[CLOSED],[CLOSEDFlag]=s.[CLOSEDFlag],[ColorScheme]=s.[ColorScheme],[CostPrice]=s.[CostPrice],[CSAccrualGroup]=s.[CSAccrualGroup],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[Description]=s.[Description],[DevelopmentId]=s.[DevelopmentId],[FacadeId]=s.[FacadeId],[FINALIZATIONSTATUS]=s.[FINALIZATIONSTATUS],[FINALIZATIONSTATUSEnumID]=s.[FINALIZATIONSTATUSEnumID],[FINALIZED]=s.[FINALIZED],[FINALIZEDFlag]=s.[FINALIZEDFlag],[HasTitle]=s.[HasTitle],[HasTitleFlag]=s.[HasTitleFlag],[JobType]=s.[JobType],[Location]=s.[Location],[LotNo]=s.[LotNo],[LotPremiumInventory]=s.[LotPremiumInventory],[LotStatusId]=s.[LotStatusId],[LotStructureElement]=s.[LotStructureElement],[OH_ConsLotPhase]=s.[OH_ConsLotPhase],[OH_ExternalSalesPrice]=s.[OH_ExternalSalesPrice],[OH_LotMigrated]=s.[OH_LotMigrated],[OH_LotMigratedFlag]=s.[OH_LotMigratedFlag],[OH_LotOwnershipType]=s.[OH_LotOwnershipType],[Orientation]=s.[Orientation],[OrientationEnumID]=s.[OrientationEnumID],[Ownership]=s.[Ownership],[OwnershipEnumID]=s.[OwnershipEnumID],[PARTITION]=s.[PARTITION],[PHASERELEASEID]=s.[PHASERELEASEID],[PriceLocked]=s.[PriceLocked],[PriceLockedFlag]=s.[PriceLockedFlag],[PriceLockedAsOf]=s.[PriceLockedAsOf],[PRICELOCKEDASOFTZID]=s.[PRICELOCKEDASOFTZID],[PriceLockedBy]=s.[PriceLockedBy],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[RELEASEGROUP]=s.[RELEASEGROUP],[SalesPerson]=s.[SalesPerson],[SalesPrice]=s.[SalesPrice],[SalesPriceBase]=s.[SalesPriceBase],[SalesPriceDiscount]=s.[SalesPriceDiscount],[SalesPriceLotPremium]=s.[SalesPriceLotPremium],[SalesPriceOption]=s.[SalesPriceOption],[StockStatus]=s.[StockStatus],[Subfloor]=s.[Subfloor],[TarionEnrolmentNumber]=s.[TarionEnrolmentNumber],[TitleDate]=s.[TitleDate],[Tract]=s.[Tract]
when not matched then insert(
	[ACCRUED],[ACCRUEDFlag],[BuildingTypeId],[BuyerOwned],[BuyerOwnedFlag],[CLOSED],[CLOSEDFlag],[ColorScheme],[CostPrice],[CSAccrualGroup],[DataLakeModified_DateTime],[Description],[DevelopmentId],[FacadeId],[FINALIZATIONSTATUS],[FINALIZATIONSTATUSEnumID],[FINALIZED],[FINALIZEDFlag],[HasTitle],[HasTitleFlag],[JobType],[Location],[LotNo],[LotPremiumInventory],[LotStatusId],[LotStructureElement],[OH_ConsLotPhase],[OH_ExternalSalesPrice],[OH_LotMigrated],[OH_LotMigratedFlag],[OH_LotOwnershipType],[Orientation],[OrientationEnumID],[Ownership],[OwnershipEnumID],[PARTITION],[PHASERELEASEID],[PriceLocked],[PriceLockedFlag],[PriceLockedAsOf],[PRICELOCKEDASOFTZID],[PriceLockedBy],[RECID],[RECVERSION],[RELEASEGROUP],[SalesPerson],[SalesPrice],[SalesPriceBase],[SalesPriceDiscount],[SalesPriceLotPremium],[SalesPriceOption],[StockStatus],[Subfloor],[TarionEnrolmentNumber],[TitleDate],[Tract]
)
values (
[ACCRUED],[ACCRUEDFlag],[BuildingTypeId],[BuyerOwned],[BuyerOwnedFlag],[CLOSED],[CLOSEDFlag],[ColorScheme],[CostPrice],[CSAccrualGroup],[DataLakeModified_DateTime],[Description],[DevelopmentId],[FacadeId],[FINALIZATIONSTATUS],[FINALIZATIONSTATUSEnumID],[FINALIZED],[FINALIZEDFlag],[HasTitle],[HasTitleFlag],[JobType],[Location],[LotNo],[LotPremiumInventory],[LotStatusId],[LotStructureElement],[OH_ConsLotPhase],[OH_ExternalSalesPrice],[OH_LotMigrated],[OH_LotMigratedFlag],[OH_LotOwnershipType],[Orientation],[OrientationEnumID],[Ownership],[OwnershipEnumID],[PARTITION],[PHASERELEASEID],[PriceLocked],[PriceLockedFlag],[PriceLockedAsOf],[PRICELOCKEDASOFTZID],[PriceLockedBy],[RECID],[RECVERSION],[RELEASEGROUP],[SalesPerson],[SalesPrice],[SalesPriceBase],[SalesPriceDiscount],[SalesPriceLotPremium],[SalesPriceOption],[StockStatus],[Subfloor],[TarionEnrolmentNumber],[TitleDate],[Tract]
);

end
GO
