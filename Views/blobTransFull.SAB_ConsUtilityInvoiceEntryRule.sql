create   view [blobTransFull].[SAB_ConsUtilityInvoiceEntryRule] as select 
LSN,[CostCategory]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[GracePeriod]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Vendor]
 from blobFull.SAB_ConsUtilityInvoiceEntryRule t
GO
