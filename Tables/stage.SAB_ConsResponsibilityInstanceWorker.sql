CREATE TABLE [stage].[SAB_ConsResponsibilityInstanceWorker]
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
[FinancialInstance] [bigint] NULL,
[LineNumber] [bigint] NULL,
[IsPrimary] [varchar] (51) NULL,
[Responsibility] [bigint] NULL,
[Worker] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
) ON [PRIMARY]
GO
