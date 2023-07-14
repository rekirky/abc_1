CREATE TABLE [dbo].[SAB_ConsEnumerationAttributeValue]
(
[Attribute] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Inactive] [varchar] (51) NULL,
[OrdinalNumber] [int] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[TextPrompt] [varchar] (3) NULL,
[TextPromptFlag] [bit] NULL,
[Value] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsEnumerationAttributeValue] ADD CONSTRAINT [PK_SAB_ConsEnumerationAttributeValue_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
