CREATE TABLE [dbo].[table1]
(
[id] [uniqueidentifier] NOT NULL,
[name] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[table1] ADD CONSTRAINT [PK_table1] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
