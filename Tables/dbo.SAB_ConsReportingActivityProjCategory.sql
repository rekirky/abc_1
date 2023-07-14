CREATE TABLE [dbo].[SAB_ConsReportingActivityProjCategory]
(
[CategoryRestriction] [varchar] (256) NULL,
[CategoryRestrictionEnumID] [varchar] (51) NULL,
[CostCategory] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ReportingActivity] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsReportingActivityProjCategory] ADD CONSTRAINT [PK_SAB_ConsReportingActivityProjCategory_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_SSAB_ConsReportingActivityProjCategory] ON [dbo].[SAB_ConsReportingActivityProjCategory] ([CostCategory]) ON [PRIMARY]
GO
