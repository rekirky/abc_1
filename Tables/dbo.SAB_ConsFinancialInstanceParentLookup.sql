CREATE TABLE [dbo].[SAB_ConsFinancialInstanceParentLookup]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FinancialInstance] [bigint] NULL,
[FinancialInstanceParent] [bigint] NULL,
[LevelParent] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsFinancialInstanceParentLookup] ADD CONSTRAINT [PK_SAB_ConsFinancialInstanceParentLookup_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_Sab_ConsFinancialInstanceParentLookup] ON [dbo].[SAB_ConsFinancialInstanceParentLookup] ([FinancialInstance], [LevelParent]) ON [PRIMARY]
GO
