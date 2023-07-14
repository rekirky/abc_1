CREATE TABLE [dbo].[SAB_ConsJournalEntry]
(
[ApprovalStatus] [varchar] (256) NULL,
[ApprovalStatusEnumID] [varchar] (51) NULL,
[CREATEDBY] [varchar] (20) NULL,
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (120) NULL,
[ForeignCompany] [varchar] (4) NULL,
[ForeignJournalType] [varchar] (256) NULL,
[ForeignJournalTypeEnumID] [varchar] (51) NULL,
[ForeignVoucher] [varchar] (30) NULL,
[JournalEntryId] [varchar] (30) NULL,
[JournalType] [varchar] (256) NULL,
[JournalTypeEnumID] [varchar] (51) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[PARTITION] [bigint] NULL,
[Posted] [varchar] (3) NULL,
[PostedFlag] [bit] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ReverseDate] [date] NULL,
[ReverseEntry] [varchar] (51) NULL,
[ReverseEntryRecId] [bigint] NULL,
[TransDate] [date] NULL,
[Voucher] [varchar] (30) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsJournalEntry] ADD CONSTRAINT [PK_SAB_ConsJournalEntry_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
