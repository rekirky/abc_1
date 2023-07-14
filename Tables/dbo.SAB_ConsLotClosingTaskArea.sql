CREATE TABLE [dbo].[SAB_ConsLotClosingTaskArea]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Name] [varchar] (120) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsLotClosingTaskArea] ADD CONSTRAINT [PK_SAB_ConsLotClosingTaskArea_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
