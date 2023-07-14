create   view [blobTransInc].[SAB_ConsLocation] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[Location]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TarionRoom]
 from stage.SAB_ConsLocation t
GO
