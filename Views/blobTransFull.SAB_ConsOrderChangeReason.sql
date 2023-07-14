create   view [blobTransFull].[SAB_ConsOrderChangeReason] as select 
LSN,[ChangeReason]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsOrderChangeReason t
GO
