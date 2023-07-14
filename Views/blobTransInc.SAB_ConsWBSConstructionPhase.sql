create   view [blobTransInc].[SAB_ConsWBSConstructionPhase] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[PARTITION]
,[Phase]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsWBSConstructionPhase t
GO
