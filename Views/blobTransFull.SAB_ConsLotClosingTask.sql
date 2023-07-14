create   view [blobTransFull].[SAB_ConsLotClosingTask] as select 
LSN,[Area]
,[Completed]
,[CompletedBy]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DateCompleted]=cast([DateCompleted] as date)
,[DateDue]=cast([DateDue] as date)
,[Lot]
,[LotFinancialInstance]
,[Notes]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Responsibility]
,[TaskAttribute]
 from blobFull.SAB_ConsLotClosingTask t
GO
