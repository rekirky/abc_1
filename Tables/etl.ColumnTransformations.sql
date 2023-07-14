CREATE TABLE [etl].[ColumnTransformations]
(
[TableName] [varchar] (500) NOT NULL,
[ColumnName] [varchar] (500) NOT NULL,
[TransformationType] [varchar] (20) NULL,
[TransformationDetails] [varchar] (100) NULL,
[Enabled] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [etl].[ColumnTransformations] ADD CONSTRAINT [PK_ColumnTransformations] PRIMARY KEY CLUSTERED ([TableName], [ColumnName]) ON [PRIMARY]
GO
