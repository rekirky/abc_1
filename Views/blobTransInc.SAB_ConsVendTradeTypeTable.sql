create   view [blobTransInc].[SAB_ConsVendTradeTypeTable] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[BidGroupByElementType]
,[CSCostCategoryDefault]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[VendTradeTypeDescription]
,[VendTradeTypeId]
 from stage.SAB_ConsVendTradeTypeTable t
GO
