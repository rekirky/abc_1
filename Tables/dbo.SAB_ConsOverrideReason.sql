CREATE TABLE [dbo].[SAB_ConsOverrideReason]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Name] [varchar] (30) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsOverrideReason] ADD CONSTRAINT [PK_SAB_ConsOverrideReason_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
