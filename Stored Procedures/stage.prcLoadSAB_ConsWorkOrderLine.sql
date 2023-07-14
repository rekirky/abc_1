create   proc [stage].[prcLoadSAB_ConsWorkOrderLine] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsWorkOrderLine t 
where exists 
	(select 1 from stage.SAB_ConsWorkOrderLine s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsWorkOrderLine with(tablock) as t
using (select * from blobTransInc.SAB_ConsWorkOrderLine where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[ChangedBy]=s.[ChangedBy],[ChangeReason]=s.[ChangeReason],[CostCategory]=s.[CostCategory],[CREATEDBY]=s.[CREATEDBY],[CREATEDDATETIME]=s.[CREATEDDATETIME],[CSRequestLine]=s.[CSRequestLine],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DesignCenterAttributeChanged]=s.[DesignCenterAttributeChanged],[DesignCenterAttributeChangedFlag]=s.[DesignCenterAttributeChangedFlag],[DesignCenterAttributeDateTime]=s.[DesignCenterAttributeDateTime],[DESIGNCENTERATTRIBUTEDATETIMETZID]=s.[DESIGNCENTERATTRIBUTEDATETIMETZID],[EntryType]=s.[EntryType],[EntryTypeEnumID]=s.[EntryTypeEnumID],[EquipRentalEstimatedEndDate]=s.[EquipRentalEstimatedEndDate],[EquipRentalStartDate]=s.[EquipRentalStartDate],[FinancialInstance]=s.[FinancialInstance],[InventUnit]=s.[InventUnit],[IsDeleted]=s.[IsDeleted],[IsModified]=s.[IsModified],[ItemId]=s.[ItemId],[LineAmount]=s.[LineAmount],[LineNumber]=s.[LineNumber],[LineType]=s.[LineType],[LineTypeEnumID]=s.[LineTypeEnumID],[Location]=s.[Location],[LocationGroup]=s.[LocationGroup],[MODIFIEDBY]=s.[MODIFIEDBY],[MODIFIEDDATETIME]=s.[MODIFIEDDATETIME],[Name]=s.[Name],[NoteChanged]=s.[NoteChanged],[NoteChangedFlag]=s.[NoteChangedFlag],[OPTION_]=s.[OPTION_],[Orientation]=s.[Orientation],[OrientationEnumID]=s.[OrientationEnumID],[PARTITION]=s.[PARTITION],[PriceOverride]=s.[PriceOverride],[PurchPrice]=s.[PurchPrice],[PurchQty]=s.[PurchQty],[PurchQtyRemain]=s.[PurchQtyRemain],[PurchUnit]=s.[PurchUnit],[QtyOrdered]=s.[QtyOrdered],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[SupplementAmount]=s.[SupplementAmount],[TaxGroup]=s.[TaxGroup],[TaxItemGroup]=s.[TaxItemGroup],[TradeType]=s.[TradeType],[Vendor]=s.[Vendor],[WorkOrder]=s.[WorkOrder]
when not matched then insert(
	[ChangedBy],[ChangeReason],[CostCategory],[CREATEDBY],[CREATEDDATETIME],[CSRequestLine],[DataLakeModified_DateTime],[DesignCenterAttributeChanged],[DesignCenterAttributeChangedFlag],[DesignCenterAttributeDateTime],[DESIGNCENTERATTRIBUTEDATETIMETZID],[EntryType],[EntryTypeEnumID],[EquipRentalEstimatedEndDate],[EquipRentalStartDate],[FinancialInstance],[InventUnit],[IsDeleted],[IsModified],[ItemId],[LineAmount],[LineNumber],[LineType],[LineTypeEnumID],[Location],[LocationGroup],[MODIFIEDBY],[MODIFIEDDATETIME],[Name],[NoteChanged],[NoteChangedFlag],[OPTION_],[Orientation],[OrientationEnumID],[PARTITION],[PriceOverride],[PurchPrice],[PurchQty],[PurchQtyRemain],[PurchUnit],[QtyOrdered],[RECID],[RECVERSION],[SupplementAmount],[TaxGroup],[TaxItemGroup],[TradeType],[Vendor],[WorkOrder]
)
values (
[ChangedBy],[ChangeReason],[CostCategory],[CREATEDBY],[CREATEDDATETIME],[CSRequestLine],[DataLakeModified_DateTime],[DesignCenterAttributeChanged],[DesignCenterAttributeChangedFlag],[DesignCenterAttributeDateTime],[DESIGNCENTERATTRIBUTEDATETIMETZID],[EntryType],[EntryTypeEnumID],[EquipRentalEstimatedEndDate],[EquipRentalStartDate],[FinancialInstance],[InventUnit],[IsDeleted],[IsModified],[ItemId],[LineAmount],[LineNumber],[LineType],[LineTypeEnumID],[Location],[LocationGroup],[MODIFIEDBY],[MODIFIEDDATETIME],[Name],[NoteChanged],[NoteChangedFlag],[OPTION_],[Orientation],[OrientationEnumID],[PARTITION],[PriceOverride],[PurchPrice],[PurchQty],[PurchQtyRemain],[PurchUnit],[QtyOrdered],[RECID],[RECVERSION],[SupplementAmount],[TaxGroup],[TaxItemGroup],[TradeType],[Vendor],[WorkOrder]
);

end
GO
