CREATE TABLE [dbo].[SAB_ConsStatusLogUpdateHistory]
(
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[NewTransDate] [date] NULL,
[OriginalTransDate] [date] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Status] [varchar] (256) NULL,
[StatusEnumID] [varchar] (51) NULL,
[StatusLog] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsStatusLogUpdateHistory] ADD CONSTRAINT [PK_SAB_ConsStatusLogUpdateHistory_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
