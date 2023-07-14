create   view [blobTransInc].[SAB_ConsCSRequestVendorPendingStatusReason] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[PendingStatusReason]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsCSRequestVendorPendingStatusReason t
GO
