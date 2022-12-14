CREATE TABLE [dbo].[samesamebutdifferent]
(
[id] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[name] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[extra] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[samesamebutdifferent] ADD CONSTRAINT [PK_samesamebutdifferent] PRIMARY KEY CLUSTERED ([id]) ON [PRIMARY]
GO
