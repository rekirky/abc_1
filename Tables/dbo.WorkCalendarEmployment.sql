CREATE TABLE [dbo].[WorkCalendarEmployment]
(
[CalendarDataAreaId] [varchar] (4) NULL,
[CalendarId] [varchar] (10) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Employment] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WorkCalendarEmployment] ADD CONSTRAINT [PK_WorkCalendarEmployment_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
