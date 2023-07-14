CREATE TABLE [stage].[DataArea]
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
[ID] [varchar] (251) NULL,
[NAME] [varchar] (251) NULL,
[ISVIRTUAL] [bigint] NULL,
[ALWAYSNATIVE] [bigint] NULL,
[TIMEZONE] [bigint] NULL,
[RECVERSION] [bigint] NULL,
[PARTITION] [bigint] NULL
) ON [PRIMARY]
GO
