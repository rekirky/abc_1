create   view [blobTransFull].[SAB_ConsInventTableTradeType] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[ItemId]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TradeType]
 from blobFull.SAB_ConsInventTableTradeType t
GO
