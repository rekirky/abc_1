create   view [blobTransFull].[SAB_ConsCSCategory] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TarionItem]
 from blobFull.SAB_ConsCSCategory t
GO
