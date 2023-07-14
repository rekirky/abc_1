create   view [blobTransInc].[SAB_ConsCSWarrantyExpiryRule] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LotStructureElement]
,[OPTION_]
,[OptionCategory]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TradeType]
,[WarrantyPeriod]
 from stage.SAB_ConsCSWarrantyExpiryRule t
GO
