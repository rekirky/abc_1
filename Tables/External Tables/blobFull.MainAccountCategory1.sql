CREATE EXTERNAL TABLE [blobFull].[MainAccountCategory]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[AccountCategory] [varchar] (20) NULL,
[AccountCategoryRef] [int] NULL,
[AccountCategoryDisplayOrder] [int] NULL,
[AccountType] [varchar] (51) NULL,
[Closed] [varchar] (51) NULL,
[Description] [varchar] (120) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/Finance/Ledger/Main/MainAccountCategory/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
