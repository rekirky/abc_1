create   view [blobTransInc].[SAB_ConsVendTradeTypeCategory] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[CostCategory]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LotStructureElement]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TradeType]
 from stage.SAB_ConsVendTradeTypeCategory t
GO
