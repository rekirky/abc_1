CREATE TABLE [stage].[SAB_ConsEnumerationAttributeValue]
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
[OrdinalNumber] [int] NULL,
[TextPrompt] [varchar] (51) NULL,
[Value] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[Inactive] [varchar] (51) NULL
) ON [PRIMARY]
GO
