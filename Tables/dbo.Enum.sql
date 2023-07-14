CREATE TABLE [dbo].[Enum]
(
[EnumSet] [varchar] (256) NOT NULL,
[EnumCode] [bigint] NOT NULL,
[Enum] [varchar] (256) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Enum] ADD CONSTRAINT [pk_Enum] PRIMARY KEY CLUSTERED ([EnumSet], [EnumCode]) ON [PRIMARY]
GO
