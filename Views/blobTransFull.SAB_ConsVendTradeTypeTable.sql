create   view [blobTransFull].[SAB_ConsVendTradeTypeTable] as select 
LSN,[BidGroupByElementType]
,[CSCostCategoryDefault]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[VendTradeTypeDescription]
,[VendTradeTypeId]
 from blobFull.SAB_ConsVendTradeTypeTable t
GO
