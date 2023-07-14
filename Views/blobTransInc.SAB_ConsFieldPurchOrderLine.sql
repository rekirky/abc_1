create   view [blobTransInc].[SAB_ConsFieldPurchOrderLine] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[Amount]=cast([Amount] as numeric(18,2))
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
 from stage.SAB_ConsFieldPurchOrderLine t
GO
