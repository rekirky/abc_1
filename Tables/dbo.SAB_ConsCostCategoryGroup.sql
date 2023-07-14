CREATE TABLE [dbo].[SAB_ConsCostCategoryGroup]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[GroupName] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsCostCategoryGroup] ADD CONSTRAINT [PK_SAB_ConsCostCategoryGroup_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
