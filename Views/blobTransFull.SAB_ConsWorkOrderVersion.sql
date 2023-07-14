create   view [blobTransFull].[SAB_ConsWorkOrderVersion] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[IsArchived]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[VersionDateTime]=cast([VersionDateTime] as date)
,[VERSIONDATETIMETZID]
,[WorkOrder]
 from blobFull.SAB_ConsWorkOrderVersion t
GO
