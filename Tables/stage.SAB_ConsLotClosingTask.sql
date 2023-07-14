CREATE TABLE [stage].[SAB_ConsLotClosingTask]
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
[Lot] [bigint] NULL,
[TaskAttribute] [bigint] NULL,
[Responsibility] [bigint] NULL,
[Completed] [varchar] (51) NULL,
[Notes] [varchar] (1000) NULL,
[Area] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CompletedBy] [bigint] NULL,
[DateCompleted] [varchar] (40) NULL,
[DateDue] [varchar] (40) NULL,
[LotFinancialInstance] [bigint] NULL
) ON [PRIMARY]
GO
