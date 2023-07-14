CREATE TABLE [dbo].[SAB_ConsReleaseGroup]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (120) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ReleaseGroupId] [varchar] (20) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsReleaseGroup] ADD CONSTRAINT [PK_SAB_ConsReleaseGroup_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
