CREATE TABLE [dbo].[SAB_ConsMAReportCode]
(
[CalcId] [varchar] (10) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ReportCode] [varchar] (120) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsMAReportCode] ADD CONSTRAINT [PK_SAB_ConsMAReportCode_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[SAB_ConsMAReportCode] TO [Eliant]
GO
GRANT SELECT ON  [dbo].[SAB_ConsMAReportCode] TO [OH_BasicReadOnly]
GO
GRANT SELECT ON  [dbo].[SAB_ConsMAReportCode] TO [OH_ProductionPlanning]
GO
