CREATE TABLE [dbo].[WorkCalendarDate]
(
[CalendarId] [varchar] (10) NULL,
[ClosedForPickup] [varchar] (51) NULL,
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Name] [varchar] (120) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[TransDate] [date] NULL,
[WorkTimeControl] [varchar] (256) NULL,
[WorkTimeControlEnumID] [varchar] (51) NULL,
[WorkTimeId] [varchar] (10) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WorkCalendarDate] ADD CONSTRAINT [PK_WorkCalendarDate_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_WorkCalendarDate] ON [dbo].[WorkCalendarDate] ([CalendarId], [TransDate], [DataAreaId]) ON [PRIMARY]
GO
