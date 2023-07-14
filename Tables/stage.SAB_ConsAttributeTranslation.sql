CREATE TABLE [stage].[SAB_ConsAttributeTranslation]
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
[Attribute] [bigint] NULL,
[Description] [varchar] (255) NULL,
[FriendlyName] [varchar] (120) NULL,
[HelpText] [varchar] (255) NULL,
[Language] [varchar] (7) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
) ON [PRIMARY]
GO
