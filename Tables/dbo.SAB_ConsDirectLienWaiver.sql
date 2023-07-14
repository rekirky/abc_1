CREATE TABLE [dbo].[SAB_ConsDirectLienWaiver]
(
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DocumentTemplate] [bigint] NULL,
[LienWaiverId] [varchar] (30) NULL,
[LotStructureElement] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Status] [varchar] (256) NULL,
[StatusEnumID] [varchar] (51) NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[Vendor] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsDirectLienWaiver] ADD CONSTRAINT [PK_SAB_ConsDirectLienWaiver_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
