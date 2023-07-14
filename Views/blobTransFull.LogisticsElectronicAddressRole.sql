create   view [blobTransFull].[LogisticsElectronicAddressRole] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[ElectronicAddress]
,[LocationRole]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.LogisticsElectronicAddressRole t
GO
