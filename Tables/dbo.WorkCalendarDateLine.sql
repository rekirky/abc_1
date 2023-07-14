CREATE TABLE [dbo].[WorkCalendarDateLine]
(
[CalendarId] [varchar] (10) NULL,
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Effectivity] [varchar] (51) NULL,
[FromTime] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[PropertyId] [varchar] (10) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ToTime] [varchar] (51) NULL,
[TransDate] [date] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WorkCalendarDateLine] ADD CONSTRAINT [PK_WorkCalendarDateLine_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_WorkCalendarDateLine_calendarID] ON [dbo].[WorkCalendarDateLine] ([CalendarId]) ON [PRIMARY]
GO
