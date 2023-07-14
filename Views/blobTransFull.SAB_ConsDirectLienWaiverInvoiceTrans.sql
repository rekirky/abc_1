create   view [blobTransFull].[SAB_ConsDirectLienWaiverInvoiceTrans] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DirectLienWaiver]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[VendInvoiceTrans]
,[VendTrans]
 from blobFull.SAB_ConsDirectLienWaiverInvoiceTrans t
GO
