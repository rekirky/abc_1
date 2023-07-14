create   view [blobTransInc].[WorkCalendarEmployment] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[CalendarDataAreaId]
,[CalendarId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Employment]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.WorkCalendarEmployment t
GO
