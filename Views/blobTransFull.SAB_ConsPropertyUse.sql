create   view [blobTransFull].[SAB_ConsPropertyUse] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[PropertyUseId]
,[Rebatable]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsPropertyUse t
GO
