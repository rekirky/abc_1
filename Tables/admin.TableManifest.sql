CREATE TABLE [admin].[TableManifest]
(
[Path] [varchar] (500) NULL,
[FileName] [varchar] (500) NULL,
[ManifestJSON] [varchar] (max) NULL,
[EntityJSON] [varchar] (max) NULL,
[Processed] [datetime] NULL
) ON [PRIMARY]
GO
