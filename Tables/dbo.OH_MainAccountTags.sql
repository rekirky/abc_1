CREATE TABLE [dbo].[OH_MainAccountTags]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[MainAccountNum] [varchar] (20) NULL,
[MainAccountTag] [varchar] (55) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OH_MainAccountTags] ADD CONSTRAINT [PK_OH_MainAccountTags_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[OH_MainAccountTags] TO [OH_MasterData]
GO
