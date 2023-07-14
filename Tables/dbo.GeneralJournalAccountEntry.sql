CREATE TABLE [dbo].[GeneralJournalAccountEntry]
(
[AccountingCurrencyAmount] [numeric] (18, 2) NULL,
[AllocationLevel] [varchar] (51) NULL,
[AssetLeasePostingTypes] [varchar] (256) NULL,
[AssetLeasePostingTypesEnumID] [varchar] (51) NULL,
[ASSETLEASETRANSACTIONTYPE] [int] NULL,
[CREATEDTRANSACTIONID] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[GeneralJournalEntry] [bigint] NULL,
[HistoricalExchangeRateDate] [date] NULL,
[IsCorrection] [varchar] (3) NULL,
[IsCorrectionFlag] [bit] NULL,
[IsCredit] [varchar] (3) NULL,
[IsCreditFlag] [bit] NULL,
[LedgerAccount] [varchar] (500) NULL,
[LedgerDimension] [varchar] (51) NULL,
[MainAccount] [bigint] NULL,
[OriginalAccountEntry] [bigint] NULL,
[PARTITION] [bigint] NULL,
[PaymentReference] [varchar] (35) NULL,
[PostingType] [varchar] (256) NULL,
[PostingTypeEnumID] [varchar] (51) NULL,
[ProjId_SA] [varchar] (20) NULL,
[ProjTableDataAreaId] [varchar] (4) NULL,
[Quantity] [numeric] (18, 6) NULL,
[ReasonRef] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ReportingCurrencyAmount] [numeric] (18, 2) NULL,
[Text] [varchar] (512) NULL,
[TransactionCurrencyAmount] [numeric] (18, 2) NULL,
[TransactionCurrencyCode] [varchar] (3) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GeneralJournalAccountEntry] ADD CONSTRAINT [PK_GeneralJournalAccountEntry_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
