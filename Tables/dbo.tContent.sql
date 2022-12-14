CREATE TABLE [dbo].[tContent]
(
[contentId] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[modId] [nchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sitename] [nchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tContent] ADD CONSTRAINT [PK_tContent] PRIMARY KEY CLUSTERED ([contentId]) ON [PRIMARY]
GO
