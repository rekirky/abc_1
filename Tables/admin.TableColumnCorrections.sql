CREATE TABLE [admin].[TableColumnCorrections]
(
[TableName] [varchar] (300) NOT NULL,
[ColumnName] [varchar] (300) NOT NULL,
[DataTypeWeak] [varchar] (50) NULL,
[DataTypeStrong] [varchar] (50) NULL
) ON [PRIMARY]
GO
ALTER TABLE [admin].[TableColumnCorrections] ADD CONSTRAINT [PK_Admin_TableColumnCorrections] PRIMARY KEY CLUSTERED ([TableName], [ColumnName]) ON [PRIMARY]
GO
