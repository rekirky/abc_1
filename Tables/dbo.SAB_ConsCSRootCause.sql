CREATE TABLE [dbo].[SAB_ConsCSRootCause]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Name] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsCSRootCause] ADD CONSTRAINT [PK_SAB_ConsCSRootCause_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
