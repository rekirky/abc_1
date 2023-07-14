create   view [blobTransInc].[WorkCalendarDateLine] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[CalendarId]
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
 from stage.WorkCalendarDateLine t
GO
