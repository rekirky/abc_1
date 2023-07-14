CREATE TABLE [dbo].[SAB_ConsMAReportCodeCategory]
(
[CostCategory] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ReportCode] [bigint] NULL,
[RevenueCategory] [bigint] NULL,
[UseMinimum] [varchar] (51) NULL,
[Weighting] [numeric] (18, 6) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsMAReportCodeCategory] ADD CONSTRAINT [PK_SAB_ConsMAReportCodeCategory_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[SAB_ConsMAReportCodeCategory] TO [Eliant]
GO
GRANT SELECT ON  [dbo].[SAB_ConsMAReportCodeCategory] TO [OH_BasicReadOnly]
GO
GRANT SELECT ON  [dbo].[SAB_ConsMAReportCodeCategory] TO [OH_ProductionPlanning]
GO
