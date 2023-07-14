CREATE TABLE [dbo].[GeneralJournalEntry]
(
[AccountingDate] [date] NULL,
[AcknowledgementDate] [date] NULL,
[BudgetSourceLedgerEntryPosted] [bigint] NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[CREATEDTRANSACTIONID] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DocumentDate] [date] NULL,
[DocumentNumber] [varchar] (20) NULL,
[FiscalCalendarPeriod] [varchar] (51) NULL,
[FiscalCalendarYear] [varchar] (51) NULL,
[JournalCategory] [varchar] (256) NULL,
[JournalCategoryEnumID] [varchar] (51) NULL,
[JournalNumber] [varchar] (30) NULL,
[Ledger] [bigint] NULL,
[LedgerEntryJournal] [bigint] NULL,
[LedgerPostingJournal] [varchar] (30) NULL,
[LedgerPostingJournalDataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[PostingLayer] [varchar] (256) NULL,
[PostingLayerEnumID] [varchar] (51) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[SubledgerVoucher] [varchar] (30) NULL,
[SubledgerVoucherDataAreaId] [varchar] (4) NULL,
[TransferId] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GeneralJournalEntry] ADD CONSTRAINT [PK_GeneralJournalEntry_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
