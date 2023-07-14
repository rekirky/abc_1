create   view [blobTransInc].[SAB_ConsOrderChangeReason] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[ChangeReason]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsOrderChangeReason t
GO
