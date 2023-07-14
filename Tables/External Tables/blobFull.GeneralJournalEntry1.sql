CREATE EXTERNAL TABLE [blobFull].[GeneralJournalEntry]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[AccountingDate] [varchar] (40) NULL,
[AcknowledgementDate] [varchar] (40) NULL,
[DocumentDate] [varchar] (40) NULL,
[DocumentNumber] [varchar] (20) NULL,
[FiscalCalendarPeriod] [varchar] (51) NULL,
[FiscalCalendarYear] [varchar] (51) NULL,
[JournalCategory] [varchar] (51) NULL,
[JournalNumber] [varchar] (30) NULL,
[Ledger] [bigint] NULL,
[PostingLayer] [varchar] (51) NULL,
[TransferId] [bigint] NULL,
[SubledgerVoucher] [varchar] (30) NULL,
[SubledgerVoucherDataAreaId] [varchar] (4) NULL,
[LedgerEntryJournal] [bigint] NULL,
[LedgerPostingJournal] [varchar] (30) NULL,
[LedgerPostingJournalDataAreaId] [varchar] (4) NULL,
[BudgetSourceLedgerEntryPosted] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDTRANSACTIONID] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/Finance/Ledger/TransactionHeader/GeneralJournalEntry/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
