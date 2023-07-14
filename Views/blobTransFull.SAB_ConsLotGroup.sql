create   view [blobTransFull].[SAB_ConsLotGroup] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LotGroup]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsLotGroup t
GO
