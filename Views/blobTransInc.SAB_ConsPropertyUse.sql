create   view [blobTransInc].[SAB_ConsPropertyUse] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[PropertyUseId]
,[Rebatable]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsPropertyUse t
GO
