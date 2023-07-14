CREATE TABLE [dbo].[SAB_ConsBudgetRevision]
(
[BudgetApprovalState] [varchar] (256) NULL,
[BudgetApprovalStateEnumID] [varchar] (51) NULL,
[BudgetRevisionId] [varchar] (30) NULL,
[BudgetState] [varchar] (256) NULL,
[BudgetStateEnumID] [varchar] (51) NULL,
[ChangeReason] [bigint] NULL,
[ConsBudget] [bigint] NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (120) NULL,
[DueDate] [date] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [date] NULL,
[OH_RevisionOwner] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[PostingDate] [date] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Responsibility] [bigint] NULL,
[SubmittedDate] [date] NULL,
[Transfer] [varchar] (3) NULL,
[TransferFlag] [bit] NULL,
[TransferElementFinancialInstance] [bigint] NULL,
[WorkerSubmitter] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsBudgetRevision] ADD CONSTRAINT [PK_SAB_ConsBudgetRevision_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_Sab_ConsBudgetRevision_RecID] ON [dbo].[SAB_ConsBudgetRevision] ([RECID]) ON [PRIMARY]
GO
