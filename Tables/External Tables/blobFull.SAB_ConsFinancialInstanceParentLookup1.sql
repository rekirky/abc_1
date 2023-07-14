CREATE EXTERNAL TABLE [blobFull].[SAB_ConsFinancialInstanceParentLookup]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[FinancialInstance] [bigint] NULL,
[FinancialInstanceParent] [bigint] NULL,
[LevelParent] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/SAB_Cons/Main/SAB_ConsFinancialInstanceParentLookup/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
