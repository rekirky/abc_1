CREATE EXTERNAL TABLE [blobFull].[TransactTxt]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[LanguageId] [varchar] (7) NULL,
[TransactionType] [varchar] (51) NULL,
[Txt] [varchar] (120) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[OH_Notes] [varchar] (255) NULL
)
WITH
(
LOCATION = N'Tables/Finance/Ledger/Group/TransactTxt/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
