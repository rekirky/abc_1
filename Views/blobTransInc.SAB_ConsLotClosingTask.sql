create   view [blobTransInc].[SAB_ConsLotClosingTask] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[Area]
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
 from stage.SAB_ConsLotClosingTask t
GO
