CREATE EXTERNAL TABLE [blobFull].[SubledgerVoucherGeneralJournalEntry]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[AccountingDate] [varchar] (40) NULL,
[GeneralJournalEntry] [bigint] NULL,
[Voucher] [varchar] (30) NULL,
[VoucherDataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[SubledgerJournalEntry] [bigint] NULL,
[TransferId] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/Finance/Ledger/Transaction/SubledgerVoucherGeneralJournalEntry/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
