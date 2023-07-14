create   view [blobTransInc].[SAB_ConsCSSuspendReason] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsCSSuspendReason t
GO
