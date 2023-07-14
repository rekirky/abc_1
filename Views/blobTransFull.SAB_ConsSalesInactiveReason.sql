create   view [blobTransFull].[SAB_ConsSalesInactiveReason] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[InactiveReason]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsSalesInactiveReason t
GO
