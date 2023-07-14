CREATE EXTERNAL TABLE [blobFull].[SecurityRole]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[NAME] [varchar] (251) NULL,
[DEL_ALLOWPASTRECORDS] [bigint] NULL,
[DEL_ALLOWCURRENTRECORDS] [bigint] NULL,
[DEL_ALLOWFUTURERECORDS] [bigint] NULL,
[DESCRIPTION] [varchar] (500) NULL,
[AOTNAME] [varchar] (251) NULL,
[DEL_ISENABLED] [bigint] NULL,
[CONTEXTSTRING] [varchar] (251) NULL,
[USERLICENSETYPE] [bigint] NULL,
[ACCESSTOSENSITIVEDATA] [bigint] NULL,
[RECVERSION] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/General/Main/SecurityRole/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
