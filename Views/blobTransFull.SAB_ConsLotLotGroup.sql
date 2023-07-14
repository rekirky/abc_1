create   view [blobTransFull].[SAB_ConsLotLotGroup] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Lot]
,[LotGroup]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsLotLotGroup t
GO
