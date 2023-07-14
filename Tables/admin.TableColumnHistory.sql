CREATE TABLE [admin].[TableColumnHistory]
(
[AsAt] [datetime2] (0) NOT NULL,
[TableName] [varchar] (300) NOT NULL,
[ColumnName] [varchar] (300) NOT NULL,
[ColumnIndex] [int] NULL,
[DisplayName] [varchar] (500) NULL,
[DataTypeWeak] [varchar] (50) NULL,
[DataTypeStrong] [varchar] (50) NULL,
[d365Type] [varchar] (200) NULL,
[d365Class] [varchar] (200) NULL
) ON [PRIMARY]
GO
ALTER TABLE [admin].[TableColumnHistory] ADD CONSTRAINT [PK_admin_tableColumnHistory] PRIMARY KEY CLUSTERED ([AsAt], [TableName], [ColumnName]) ON [PRIMARY]
GO
