CREATE TABLE [admin].[NewDataLakeFilesLog]
(
[AsAt] [datetime2] (0) NULL,
[FolderPath] [varchar] (1000) NULL,
[FileName] [varchar] (500) NULL,
[TableName] AS (replace(substring([FolderPath],charindex('ChangeFeed/',[FolderPath],(1)),(999)),'ChangeFeed/','')),
[ProcessingStatus] [varchar] (100) NULL,
[IsProcessed] AS (case  when [ProcessingStatus]='Processed' then (1) else (0) end)
) ON [PRIMARY]
GO
