CREATE TABLE [dbo].[SAB_ConsOrderChangeReason]
(
[ChangeReason] [varchar] (10) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (120) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsOrderChangeReason] ADD CONSTRAINT [PK_SAB_ConsOrderChangeReason_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
