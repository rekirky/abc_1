CREATE TABLE [dbo].[SAB_ConsBudgetRevisionLine]
(
[ConsBudgetLine] [bigint] NULL,
[ConsBudgetRevision] [bigint] NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[MODIFIEDDATETIME] [date] NULL,
[NewTotalBudget] [numeric] (18, 2) NULL,
[PARTITION] [bigint] NULL,
[PreviousApprovedBudget] [numeric] (18, 2) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RevisionAmount] [numeric] (18, 2) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsBudgetRevisionLine] ADD CONSTRAINT [PK_SAB_ConsBudgetRevisionLine_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_Sab_ConsBudgetRevisionLine] ON [dbo].[SAB_ConsBudgetRevisionLine] ([ConsBudgetRevision]) ON [PRIMARY]
GO
