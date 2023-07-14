CREATE TABLE [admin].[IndexDefinitions]
(
[tableName] [sys].[sysname] NOT NULL,
[createStatement] [nvarchar] (4000) NOT NULL,
[IsClustered] AS (case  when [createStatement] like 'Create cluster%' then (1) else (0) end)
) ON [PRIMARY]
GO
