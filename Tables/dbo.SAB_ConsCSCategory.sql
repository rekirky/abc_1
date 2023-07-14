CREATE TABLE [dbo].[SAB_ConsCSCategory]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Name] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[TarionItem] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsCSCategory] ADD CONSTRAINT [PK_SAB_ConsCSCategory_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
