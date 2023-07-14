CREATE EXTERNAL TABLE [blobFull].[DataArea]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[ID] [varchar] (251) NULL,
[NAME] [varchar] (251) NULL,
[ISVIRTUAL] [bigint] NULL,
[ALWAYSNATIVE] [bigint] NULL,
[TIMEZONE] [bigint] NULL,
[RECVERSION] [bigint] NULL,
[PARTITION] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/General/Main/DataArea/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
