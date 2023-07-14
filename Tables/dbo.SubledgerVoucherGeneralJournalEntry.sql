CREATE TABLE [dbo].[SubledgerVoucherGeneralJournalEntry]
(
[AccountingDate] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[GeneralJournalEntry] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[SubledgerJournalEntry] [bigint] NULL,
[TransferId] [bigint] NULL,
[Voucher] [varchar] (30) NULL,
[VoucherDataAreaId] [varchar] (4) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SubledgerVoucherGeneralJournalEntry] ADD CONSTRAINT [PK_SubledgerVoucherGeneralJournalEntry_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
