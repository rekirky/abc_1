create   view [blobTransFull].[SAB_ConsVendCrew] as select 
LSN,[Color]
,[ContactParty]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Vendor]
 from blobFull.SAB_ConsVendCrew t
GO
