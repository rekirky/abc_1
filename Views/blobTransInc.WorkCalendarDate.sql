create   view [blobTransInc].[WorkCalendarDate] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[CalendarId]
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
 from stage.WorkCalendarDate t
GO
