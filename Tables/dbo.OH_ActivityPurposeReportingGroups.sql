CREATE TABLE [dbo].[OH_ActivityPurposeReportingGroups]
(
[ActivityPurposeReportingGroup] [varchar] (50) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OH_ActivityPurposeReportingGroups] ADD CONSTRAINT [PK_OH_ActivityPurposeReportingGroups_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
