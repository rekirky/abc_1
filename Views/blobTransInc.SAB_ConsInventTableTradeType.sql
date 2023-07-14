create   view [blobTransInc].[SAB_ConsInventTableTradeType] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[ItemId]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TradeType]
 from stage.SAB_ConsInventTableTradeType t
GO
