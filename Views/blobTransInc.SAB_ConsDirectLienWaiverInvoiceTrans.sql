create   view [blobTransInc].[SAB_ConsDirectLienWaiverInvoiceTrans] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DirectLienWaiver]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[VendInvoiceTrans]
,[VendTrans]
 from stage.SAB_ConsDirectLienWaiverInvoiceTrans t
GO
