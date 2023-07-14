create   view [blobTransInc].[SAB_ConsWorkOrderVersion] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[IsArchived]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[VersionDateTime]=cast([VersionDateTime] as date)
,[VERSIONDATETIMETZID]
,[WorkOrder]
 from stage.SAB_ConsWorkOrderVersion t
GO
