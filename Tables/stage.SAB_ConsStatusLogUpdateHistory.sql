CREATE TABLE [stage].[SAB_ConsStatusLogUpdateHistory]
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
[NewTransDate] [varchar] (40) NULL,
[OriginalTransDate] [varchar] (40) NULL,
[Status] [varchar] (51) NULL,
[StatusLog] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [varchar] (40) NULL
) ON [PRIMARY]
GO
