CREATE EXTERNAL TABLE [blobFull].[SAB_ConsJournalEntryLine]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[AmountCurCredit] [float] NULL,
[AmountCurDebit] [float] NULL,
[BankAccountId] [varchar] (10) NULL,
[BankDepositNum] [varchar] (30) NULL,
[BankDepositVoucher] [varchar] (51) NULL,
[BankTransType] [varchar] (10) NULL,
[CostCategory] [bigint] NULL,
[JournalEntry] [bigint] NULL,
[DefaultDimension] [varchar] (51) NULL,
[Description] [varchar] (120) NULL,
[FinancialInstance] [bigint] NULL,
[LedgerDimension] [varchar] (51) NULL,
[LineNumber] [bigint] NULL,
[LineType] [varchar] (51) NULL,
[PaymReference] [varchar] (35) NULL,
[RevenueCategory] [bigint] NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[DataArea] [varchar] (4) NULL
)
WITH
(
LOCATION = N'Tables/General/WorksheetLine/SAB_ConsJournalEntryLine/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
