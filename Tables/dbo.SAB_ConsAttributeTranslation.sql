CREATE TABLE [dbo].[SAB_ConsAttributeTranslation]
(
[Attribute] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (255) NULL,
[FriendlyName] [varchar] (120) NULL,
[HelpText] [varchar] (255) NULL,
[Language] [varchar] (7) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsAttributeTranslation] ADD CONSTRAINT [PK_SAB_ConsAttributeTranslation_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[SAB_ConsAttributeTranslation] TO [OH_BasicReadOnly]
GO
