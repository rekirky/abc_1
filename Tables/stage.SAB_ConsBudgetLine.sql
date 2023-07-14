CREATE TABLE [stage].[SAB_ConsBudgetLine]
(
[instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[CommittedRevisions] [float] NULL,
[ConsBudget] [bigint] NULL,
[CostCategory] [bigint] NULL,
[LateChanges] [float] NULL,
[OriginalBudget] [float] NULL,
[RevenueCategory] [bigint] NULL,
[TotalBudget] [float] NULL,
[UncommittedRevisions] [float] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
) ON [PRIMARY]
GO
