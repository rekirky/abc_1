CREATE TABLE [stage].[SAB_ConsBudgetTrans]
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
[AmountMST] [float] NULL,
[Budget] [bigint] NULL,
[BudgetRevision] [bigint] NULL,
[CostCategory] [bigint] NULL,
[LateChange] [varchar] (51) NULL,
[RevenueCategory] [bigint] NULL,
[Source] [varchar] (51) NULL,
[SourceReference] [varchar] (30) NULL,
[TransDate] [varchar] (40) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL
) ON [PRIMARY]
GO
