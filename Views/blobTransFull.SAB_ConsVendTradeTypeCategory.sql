create   view [blobTransFull].[SAB_ConsVendTradeTypeCategory] as select 
LSN,[CostCategory]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LotStructureElement]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TradeType]
 from blobFull.SAB_ConsVendTradeTypeCategory t
GO
