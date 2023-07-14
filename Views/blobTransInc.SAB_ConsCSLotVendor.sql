create   view [blobTransInc].[SAB_ConsCSLotVendor] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Lot]
,[OPTION_]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TradeType]
,[ValidFrom]=cast([ValidFrom] as date)
,[ValidTo]=cast([ValidTo] as date)
,[Vendor]
,[WarrantyExpiryDate]=cast([WarrantyExpiryDate] as date)
 from stage.SAB_ConsCSLotVendor t
GO
