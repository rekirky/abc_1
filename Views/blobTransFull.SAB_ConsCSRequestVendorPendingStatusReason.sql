create   view [blobTransFull].[SAB_ConsCSRequestVendorPendingStatusReason] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[PendingStatusReason]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsCSRequestVendorPendingStatusReason t
GO
