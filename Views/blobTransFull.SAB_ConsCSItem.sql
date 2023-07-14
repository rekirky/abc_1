create   view [blobTransFull].[SAB_ConsCSItem] as select 
LSN,[Category]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TarionDefaultItem]
 from blobFull.SAB_ConsCSItem t
GO
