CREATE TABLE [dbo].[SAB_ConsResponsibilityInstanceWorker]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FinancialInstance] [bigint] NULL,
[IsPrimary] [varchar] (3) NULL,
[IsPrimaryFlag] [bit] NULL,
[LineNumber] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Responsibility] [bigint] NULL,
[Worker] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsResponsibilityInstanceWorker] ADD CONSTRAINT [PK_SAB_ConsResponsibilityInstanceWorker_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_Sab_ConsResponsibilityInstanceWorker] ON [dbo].[SAB_ConsResponsibilityInstanceWorker] ([FinancialInstance], [Responsibility], [Worker]) ON [PRIMARY]
GO
