CREATE EXTERNAL TABLE [blobFull].[SAB_ConsBudget]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
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
)
WITH
(
LOCATION = N'Tables/SAB_Cons/Transaction/SAB_ConsBudget/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
