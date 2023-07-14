create   view [blobTransFull].[WorkCalendarDateLine] as select 
LSN,[CalendarId]
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Effectivity]
,[FromTime]
,[PARTITION]
,[PropertyId]
,[RECID]
,[RECVERSION]
,[ToTime]
,[TransDate]=cast([TransDate] as date)
 from blobFull.WorkCalendarDateLine t
GO
