CREATE TABLE [dbo].[SAB_ConsOptionCategoryLookup]
(
[CategoryLevel] [bigint] NULL,
[CategoryLevelParent] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[OptionCategory] [bigint] NULL,
[OptionCategoryParent] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsOptionCategoryLookup] ADD CONSTRAINT [PK_SAB_ConsOptionCategoryLookup_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
