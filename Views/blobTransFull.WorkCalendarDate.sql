create   view [blobTransFull].[WorkCalendarDate] as select 
LSN,[CalendarId]
,[ClosedForPickup]
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TransDate]=cast([TransDate] as date)
,[WorkTimeControl]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='WorkTimeControl' and e.EnumCode=t.[WorkTimeControl]) ,WorkTimeControlEnumID=[WorkTimeControl]
,[WorkTimeId]
 from blobFull.WorkCalendarDate t
GO
