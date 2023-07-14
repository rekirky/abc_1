CREATE EXTERNAL TABLE [blobFull].[GeneralJournalAccountEntry]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[AccountingCurrencyAmount] [float] NULL,
[AllocationLevel] [varchar] (51) NULL,
[GeneralJournalEntry] [bigint] NULL,
[HistoricalExchangeRateDate] [varchar] (40) NULL,
[IsCorrection] [varchar] (51) NULL,
[IsCredit] [varchar] (51) NULL,
[LedgerAccount] [varchar] (500) NULL,
[LedgerDimension] [varchar] (51) NULL,
[PostingType] [varchar] (51) NULL,
[Quantity] [varchar] (51) NULL,
[ReportingCurrencyAmount] [float] NULL,
[Text] [varchar] (512) NULL,
[TransactionCurrencyAmount] [float] NULL,
[TransactionCurrencyCode] [varchar] (3) NULL,
[MainAccount] [bigint] NULL,
[ProjId_SA] [varchar] (20) NULL,
[ProjTableDataAreaId] [varchar] (4) NULL,
[ReasonRef] [bigint] NULL,
[PaymentReference] [varchar] (35) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDTRANSACTIONID] [bigint] NULL,
[AssetLeasePostingTypes] [varchar] (51) NULL,
[ASSETLEASETRANSACTIONTYPE] [int] NULL,
[OriginalAccountEntry] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/Finance/Ledger/TransactionLine/GeneralJournalAccountEntry/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
