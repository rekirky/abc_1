create   view [blobTransFull].[WorkCalendarEmployment] as select 
LSN,[CalendarDataAreaId]
,[CalendarId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Employment]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.WorkCalendarEmployment t
GO
