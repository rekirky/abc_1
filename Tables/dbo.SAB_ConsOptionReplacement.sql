CREATE TABLE [dbo].[SAB_ConsOptionReplacement]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[OptionMaster] [bigint] NULL,
[OptionMasterReplacement] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsOptionReplacement] ADD CONSTRAINT [PK_SAB_ConsOptionReplacement_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
