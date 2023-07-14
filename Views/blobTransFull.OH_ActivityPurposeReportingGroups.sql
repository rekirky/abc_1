create   view [blobTransFull].[OH_ActivityPurposeReportingGroups] as select 
LSN,[ActivityPurposeReportingGroup]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.OH_ActivityPurposeReportingGroups t
GO
