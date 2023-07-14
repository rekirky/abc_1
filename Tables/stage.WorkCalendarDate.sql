CREATE TABLE [stage].[WorkCalendarDate]
(
[Instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[CalendarId] [varchar] (10) NULL,
[ClosedForPickup] [varchar] (51) NULL,
[Name] [varchar] (120) NULL,
[TransDate] [varchar] (40) NULL,
[WorkTimeControl] [varchar] (51) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[WorkTimeId] [varchar] (10) NULL
) ON [PRIMARY]
GO
