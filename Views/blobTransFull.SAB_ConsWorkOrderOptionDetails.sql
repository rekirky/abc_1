create   view [blobTransFull].[SAB_ConsWorkOrderOptionDetails] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FinancialInstance]
,[Location]
,[LocationGroup]
,[OPTION_]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[SalesQty]
,[WorkOrder]
,[WorkOrderVersion]
 from blobFull.SAB_ConsWorkOrderOptionDetails t
GO
