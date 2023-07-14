CREATE TABLE [stage].[SAB_ConsBudget]
(
[Instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[BudgetApprovalState] [varchar] (51) NULL,
[BudgetState] [varchar] (51) NULL,
[BudgetType] [varchar] (51) NULL,
[FinancialInstance] [bigint] NULL,
[PostingDate] [varchar] (40) NULL,
[SubmittedDate] [varchar] (40) NULL,
[WorkerSubmitter] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[Responsibility] [bigint] NULL
) ON [PRIMARY]
GO
