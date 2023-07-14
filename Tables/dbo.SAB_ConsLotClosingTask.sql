CREATE TABLE [dbo].[SAB_ConsLotClosingTask]
(
[Area] [bigint] NULL,
[Completed] [varchar] (51) NULL,
[CompletedBy] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DateCompleted] [date] NULL,
[DateDue] [date] NULL,
[Lot] [bigint] NULL,
[LotFinancialInstance] [bigint] NULL,
[Notes] [varchar] (1000) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Responsibility] [bigint] NULL,
[TaskAttribute] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsLotClosingTask] ADD CONSTRAINT [PK_SAB_ConsLotClosingTask_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
