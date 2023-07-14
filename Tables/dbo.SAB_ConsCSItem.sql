CREATE TABLE [dbo].[SAB_ConsCSItem]
(
[Category] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Name] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[TarionDefaultItem] [varchar] (51) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsCSItem] ADD CONSTRAINT [PK_SAB_ConsCSItem_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
