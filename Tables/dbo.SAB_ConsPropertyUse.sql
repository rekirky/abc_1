CREATE TABLE [dbo].[SAB_ConsPropertyUse]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[PARTITION] [bigint] NULL,
[PropertyUseId] [varchar] (50) NULL,
[Rebatable] [varchar] (51) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsPropertyUse] ADD CONSTRAINT [PK_SAB_ConsPropertyUse_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
