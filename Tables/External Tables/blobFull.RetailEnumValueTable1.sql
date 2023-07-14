CREATE EXTERNAL TABLE [blobFull].[RetailEnumValueTable]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[EnumName] [varchar] (81) NULL,
[MemberName] [varchar] (81) NULL,
[Value] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/Commerce/CommerceMiscellaneous/Miscellaneous/RetailEnumValueTable/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
