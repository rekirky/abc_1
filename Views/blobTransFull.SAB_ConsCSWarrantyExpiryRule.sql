create   view [blobTransFull].[SAB_ConsCSWarrantyExpiryRule] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LotStructureElement]
,[OPTION_]
,[OptionCategory]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TradeType]
,[WarrantyPeriod]
 from blobFull.SAB_ConsCSWarrantyExpiryRule t
GO
