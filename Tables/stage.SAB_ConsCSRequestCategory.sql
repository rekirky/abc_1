CREATE TABLE [stage].[SAB_ConsCSRequestCategory]
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
[Name] [varchar] (50) NULL,
[Type] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[SkipCloseApproval] [varchar] (51) NULL,
[TarionRequestCategory] [varchar] (50) NULL,
[SLADays] [varchar] (51) NULL
) ON [PRIMARY]
GO
