CREATE TABLE [stage].[WorkCalendarDateLine]
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
[Effectivity] [varchar] (51) NULL,
[FromTime] [varchar] (51) NULL,
[PropertyId] [varchar] (10) NULL,
[ToTime] [varchar] (51) NULL,
[TransDate] [varchar] (40) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
) ON [PRIMARY]
GO
