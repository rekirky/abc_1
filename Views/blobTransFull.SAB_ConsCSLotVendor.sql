create   view [blobTransFull].[SAB_ConsCSLotVendor] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
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
 from blobFull.SAB_ConsCSLotVendor t
GO
