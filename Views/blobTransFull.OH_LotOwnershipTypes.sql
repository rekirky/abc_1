create   view [blobTransFull].[OH_LotOwnershipTypes] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[OH_LotOwnershipType]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.OH_LotOwnershipTypes t
GO
