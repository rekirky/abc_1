CREATE TABLE [dbo].[SAB_ConsDocuType]
(
[AllowMultiple] [varchar] (3) NULL,
[AllowMultipleFlag] [bit] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Name] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsDocuType] ADD CONSTRAINT [PK_SAB_ConsDocuType_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
