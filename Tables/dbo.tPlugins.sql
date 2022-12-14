CREATE TABLE [dbo].[tPlugins]
(
[id] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[name] [nchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[modId] [nchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tPlugins] ADD CONSTRAINT [PK_tPlugins] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
