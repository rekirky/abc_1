create   view [blobTransInc].[SAB_ConsSalesInactiveReason] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[InactiveReason]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsSalesInactiveReason t
GO
