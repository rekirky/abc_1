CREATE EXTERNAL TABLE [blobFull].[DirPersonUser]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[PersonParty] [bigint] NULL,
[USER_] [varchar] (251) NULL,
[ValidFrom] [varchar] (40) NULL,
[VALIDFROMTZID] [int] NULL,
[ValidTo] [varchar] (40) NULL,
[VALIDTOTZID] [int] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/Common/GAB/Main/DirPersonUser/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
