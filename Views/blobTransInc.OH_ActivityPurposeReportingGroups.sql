create   view [blobTransInc].[OH_ActivityPurposeReportingGroups] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[ActivityPurposeReportingGroup]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.OH_ActivityPurposeReportingGroups t
GO
