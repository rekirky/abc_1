create   view [blobTransInc].[SAB_ConsUtilityInvoiceEntryRule] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[CostCategory]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[GracePeriod]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Vendor]
 from stage.SAB_ConsUtilityInvoiceEntryRule t
GO
