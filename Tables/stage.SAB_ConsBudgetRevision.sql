CREATE TABLE [stage].[SAB_ConsBudgetRevision]
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
[BudgetApprovalState] [varchar] (51) NULL,
[BudgetRevisionId] [varchar] (30) NULL,
[BudgetState] [varchar] (51) NULL,
[ChangeReason] [bigint] NULL,
[ConsBudget] [bigint] NULL,
[Description] [varchar] (120) NULL,
[DueDate] [varchar] (40) NULL,
[PostingDate] [varchar] (40) NULL,
[SubmittedDate] [varchar] (40) NULL,
[WorkerSubmitter] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[Transfer] [varchar] (51) NULL,
[TransferElementFinancialInstance] [bigint] NULL,
[Responsibility] [bigint] NULL,
[OH_RevisionOwner] [varchar] (51) NULL
) ON [PRIMARY]
GO
