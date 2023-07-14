CREATE TABLE [admin].[Tables]
(
[BlobPath] [varchar] (500) NULL,
[TableName] [varchar] (300) NOT NULL,
[TableJson] [varchar] (max) NULL,
[CoreColumnList] [varchar] (8000) NULL,
[LastImportTimestamp] [datetime2] NULL,
[TableJsonPreviously] [varchar] (max) NULL,
[EnableFullLoading] [bit] NULL,
[EnableIncrementalLoading] [bit] NULL,
[Error] [varchar] (200) NULL,
[LastImportedLSN] [varchar] (60) NULL,
[UseStagingTable] [bit] NULL,
[MetaDataFetched] [datetime] NULL,
[TableDefinitionWeak] [varchar] (max) NULL,
[HasCustomTransformationView] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [admin].[Tables] ADD CONSTRAINT [PK_admin_tables] PRIMARY KEY CLUSTERED ([TableName]) ON [PRIMARY]
GO
