CREATE TABLE [dbo].[DirPersonUser]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[PARTITION] [bigint] NULL,
[PersonParty] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[USER_] [varchar] (251) NULL,
[ValidFrom] [date] NULL,
[VALIDFROMTZID] [int] NULL,
[ValidTo] [date] NULL,
[VALIDTOTZID] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DirPersonUser] ADD CONSTRAINT [PK_DirPersonUser_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_DirPersonUser_RecID] ON [dbo].[DirPersonUser] ([RECID]) ON [PRIMARY]
GO
