create   proc [stage].[prcLoadSAB_ConsWorkOrderLineHistory] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsWorkOrderLineHistory t 
where exists 
	(select 1 from stage.SAB_ConsWorkOrderLineHistory s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsWorkOrderLineHistory with(tablock) as t
using (select * from blobTransInc.SAB_ConsWorkOrderLineHistory where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[ChangedBy]=s.[ChangedBy],[ChangeReason]=s.[ChangeReason],[CostCategory]=s.[CostCategory],[CSRequestLine]=s.[CSRequestLine],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DesignCenterAttributeChanged]=s.[DesignCenterAttributeChanged],[DesignCenterAttributeChangedFlag]=s.[DesignCenterAttributeChangedFlag],[DesignCenterAttributeDateTime]=s.[DesignCenterAttributeDateTime],[DESIGNCENTERATTRIBUTEDATETIMETZID]=s.[DESIGNCENTERATTRIBUTEDATETIMETZID],[EntryType]=s.[EntryType],[EntryTypeEnumID]=s.[EntryTypeEnumID],[EquipRentalEstimatedEndDate]=s.[EquipRentalEstimatedEndDate],[EquipRentalStartDate]=s.[EquipRentalStartDate],[FinancialInstance]=s.[FinancialInstance],[InventUnit]=s.[InventUnit],[ItemId]=s.[ItemId],[LineAmount]=s.[LineAmount],[LineNumber]=s.[LineNumber],[LineType]=s.[LineType],[LineTypeEnumID]=s.[LineTypeEnumID],[Location]=s.[Location],[LocationGroup]=s.[LocationGroup],[Name]=s.[Name],[NoteChanged]=s.[NoteChanged],[NoteChangedFlag]=s.[NoteChangedFlag],[OPTION_]=s.[OPTION_],[Orientation]=s.[Orientation],[OrientationEnumID]=s.[OrientationEnumID],[PARTITION]=s.[PARTITION],[PurchPrice]=s.[PurchPrice],[PurchQty]=s.[PurchQty],[PurchUnit]=s.[PurchUnit],[QtyOrdered]=s.[QtyOrdered],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[SupplementAmount]=s.[SupplementAmount],[TaxGroup]=s.[TaxGroup],[TaxItemGroup]=s.[TaxItemGroup],[TradeType]=s.[TradeType],[ValidFrom]=s.[ValidFrom],[VALIDFROMTZID]=s.[VALIDFROMTZID],[ValidTo]=s.[ValidTo],[VALIDTOTZID]=s.[VALIDTOTZID],[Vendor]=s.[Vendor],[WorkOrder]=s.[WorkOrder],[WorkOrderLine]=s.[WorkOrderLine]
when not matched then insert(
	[ChangedBy],[ChangeReason],[CostCategory],[CSRequestLine],[DataLakeModified_DateTime],[DesignCenterAttributeChanged],[DesignCenterAttributeChangedFlag],[DesignCenterAttributeDateTime],[DESIGNCENTERATTRIBUTEDATETIMETZID],[EntryType],[EntryTypeEnumID],[EquipRentalEstimatedEndDate],[EquipRentalStartDate],[FinancialInstance],[InventUnit],[ItemId],[LineAmount],[LineNumber],[LineType],[LineTypeEnumID],[Location],[LocationGroup],[Name],[NoteChanged],[NoteChangedFlag],[OPTION_],[Orientation],[OrientationEnumID],[PARTITION],[PurchPrice],[PurchQty],[PurchUnit],[QtyOrdered],[RECID],[RECVERSION],[SupplementAmount],[TaxGroup],[TaxItemGroup],[TradeType],[ValidFrom],[VALIDFROMTZID],[ValidTo],[VALIDTOTZID],[Vendor],[WorkOrder],[WorkOrderLine]
)
values (
[ChangedBy],[ChangeReason],[CostCategory],[CSRequestLine],[DataLakeModified_DateTime],[DesignCenterAttributeChanged],[DesignCenterAttributeChangedFlag],[DesignCenterAttributeDateTime],[DESIGNCENTERATTRIBUTEDATETIMETZID],[EntryType],[EntryTypeEnumID],[EquipRentalEstimatedEndDate],[EquipRentalStartDate],[FinancialInstance],[InventUnit],[ItemId],[LineAmount],[LineNumber],[LineType],[LineTypeEnumID],[Location],[LocationGroup],[Name],[NoteChanged],[NoteChangedFlag],[OPTION_],[Orientation],[OrientationEnumID],[PARTITION],[PurchPrice],[PurchQty],[PurchUnit],[QtyOrdered],[RECID],[RECVERSION],[SupplementAmount],[TaxGroup],[TaxItemGroup],[TradeType],[ValidFrom],[VALIDFROMTZID],[ValidTo],[VALIDTOTZID],[Vendor],[WorkOrder],[WorkOrderLine]
);

end
GO
