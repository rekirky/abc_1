CREATE TABLE [dbo].[SAB_ConsBudget]
(
[BudgetApprovalState] [varchar] (256) NULL,
[BudgetApprovalStateEnumID] [varchar] (51) NULL,
[BudgetState] [varchar] (256) NULL,
[BudgetStateEnumID] [varchar] (51) NULL,
[BudgetType] [varchar] (256) NULL,
[BudgetTypeEnumID] [varchar] (51) NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FinancialInstance] [bigint] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [date] NULL,
[PARTITION] [bigint] NULL,
[PostingDate] [date] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Responsibility] [bigint] NULL,
[SubmittedDate] [date] NULL,
[WorkerSubmitter] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsBudget] ADD CONSTRAINT [PK_SAB_ConsBudget_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_SAB_ConsBudget] ON [dbo].[SAB_ConsBudget] ([RECID]) ON [PRIMARY]
GO
