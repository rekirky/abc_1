CREATE TABLE [etl].[ViewsToMaterialize]
(
[SourceView] [varchar] (500) NULL,
[TargetTableName] [varchar] (500) NOT NULL,
[Frequency] [varchar] (30) NULL,
[MaterializationStarted] [datetime] NULL,
[MaterializationFinished] [datetime] NULL,
[RecordCount] [int] NULL,
[TableWithClause] [varchar] (500) NULL,
[SubjectArea] [varchar] (100) NULL
) ON [PRIMARY]
GO
ALTER TABLE [etl].[ViewsToMaterialize] ADD CONSTRAINT [PK_ViewsToMaterialize] PRIMARY KEY CLUSTERED ([TargetTableName]) ON [PRIMARY]
GO
