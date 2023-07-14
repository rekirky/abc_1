create   view [blobTransInc].[SAB_ConsWorkOrderOptionDetails] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
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
 from stage.SAB_ConsWorkOrderOptionDetails t
GO
