create   view [blobTransFull].[SAB_ConsFieldPurchOrderLine] as select 
LSN,[Amount]=cast([Amount] as numeric(18,2))
,[ChangeReason]
,[CostCategory]
,[CSRequestLine]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[EquipRentalEstimatedEndDate]=cast([EquipRentalEstimatedEndDate] as date)
,[EquipRentalStartDate]=cast([EquipRentalStartDate] as date)
,[FieldPurchOrder]
,[ItemId]
,[LineNumber]
,[Name]
,[PARTITION]
,[PurchPrice]
,[PurchQty]
,[PurchUnit]
,[RECID]
,[RECVERSION]
,[TaxGroup]
,[TaxItemGroup]
 from blobFull.SAB_ConsFieldPurchOrderLine t
GO
