CREATE TABLE [dbo].[SAB_ConsJournalEntryLine]
(
[AmountCurCredit] [numeric] (18, 2) NULL,
[AmountCurDebit] [numeric] (18, 2) NULL,
[BankAccountId] [varchar] (10) NULL,
[BankDepositNum] [varchar] (30) NULL,
[BankDepositVoucher] [varchar] (51) NULL,
[BankTransType] [varchar] (10) NULL,
[CostCategory] [bigint] NULL,
[DataArea] [varchar] (4) NULL,
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DefaultDimension] [varchar] (51) NULL,
[Description] [varchar] (120) NULL,
[FinancialInstance] [bigint] NULL,
[JournalEntry] [bigint] NULL,
[LedgerDimension] [varchar] (51) NULL,
[LineNumber] [bigint] NULL,
[LineType] [varchar] (256) NULL,
[LineTypeEnumID] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[PaymReference] [varchar] (35) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RevenueCategory] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsJournalEntryLine] ADD CONSTRAINT [PK_SAB_ConsJournalEntryLine_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
