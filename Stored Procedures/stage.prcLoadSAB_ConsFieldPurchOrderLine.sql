create   proc [stage].[prcLoadSAB_ConsFieldPurchOrderLine] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsFieldPurchOrderLine t 
where exists 
	(select 1 from stage.SAB_ConsFieldPurchOrderLine s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsFieldPurchOrderLine with(tablock) as t
using (select * from blobTransInc.SAB_ConsFieldPurchOrderLine where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[Amount]=s.[Amount],[ChangeReason]=s.[ChangeReason],[CostCategory]=s.[CostCategory],[CSRequestLine]=s.[CSRequestLine],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[EquipRentalEstimatedEndDate]=s.[EquipRentalEstimatedEndDate],[EquipRentalStartDate]=s.[EquipRentalStartDate],[FieldPurchOrder]=s.[FieldPurchOrder],[ItemId]=s.[ItemId],[LineNumber]=s.[LineNumber],[Name]=s.[Name],[PARTITION]=s.[PARTITION],[PurchPrice]=s.[PurchPrice],[PurchQty]=s.[PurchQty],[PurchUnit]=s.[PurchUnit],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[TaxGroup]=s.[TaxGroup],[TaxItemGroup]=s.[TaxItemGroup]
when not matched then insert(
	[Amount],[ChangeReason],[CostCategory],[CSRequestLine],[DataLakeModified_DateTime],[EquipRentalEstimatedEndDate],[EquipRentalStartDate],[FieldPurchOrder],[ItemId],[LineNumber],[Name],[PARTITION],[PurchPrice],[PurchQty],[PurchUnit],[RECID],[RECVERSION],[TaxGroup],[TaxItemGroup]
)
values (
[Amount],[ChangeReason],[CostCategory],[CSRequestLine],[DataLakeModified_DateTime],[EquipRentalEstimatedEndDate],[EquipRentalStartDate],[FieldPurchOrder],[ItemId],[LineNumber],[Name],[PARTITION],[PurchPrice],[PurchQty],[PurchUnit],[RECID],[RECVERSION],[TaxGroup],[TaxItemGroup]
);

end
GO
