CREATE TABLE [dbo].[DirPartyLocationRole]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[LocationRole] [bigint] NULL,
[PARTITION] [bigint] NULL,
[PartyLocation] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DirPartyLocationRole] ADD CONSTRAINT [PK_DirPartyLocationRole_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_DirPartyLocationRole_RecID] ON [dbo].[DirPartyLocationRole] ([RECID]) ON [PRIMARY]
GO
