create   view [blobTransFull].[SAB_ConsLocation] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[Location]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TarionRoom]
 from blobFull.SAB_ConsLocation t
GO
