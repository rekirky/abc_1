CREATE TABLE [dbo].[SAB_ConsWBSActivityTask]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Name] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RequireImage] [varchar] (3) NULL,
[RequireImageFlag] [bit] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsWBSActivityTask] ADD CONSTRAINT [PK_SAB_ConsWBSActivityTask_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
