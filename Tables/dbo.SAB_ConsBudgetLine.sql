CREATE TABLE [dbo].[SAB_ConsBudgetLine]
(
[CommittedRevisions] [numeric] (18, 2) NULL,
[ConsBudget] [bigint] NULL,
[CostCategory] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[LateChanges] [numeric] (18, 2) NULL,
[OriginalBudget] [numeric] (18, 2) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RevenueCategory] [bigint] NULL,
[TotalBudget] [numeric] (18, 2) NULL,
[UncommittedRevisions] [numeric] (18, 2) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsBudgetLine] ADD CONSTRAINT [PK_SAB_ConsBudgetLine_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_SAB_ConsBudgetLine] ON [dbo].[SAB_ConsBudgetLine] ([ConsBudget], [CostCategory], [RevenueCategory]) ON [PRIMARY]
GO
