CREATE EXTERNAL TABLE [blobFull].[DirPersonName]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[FirstName] [varchar] (25) NULL,
[LastNamePrefix] [varchar] (25) NULL,
[LastName] [varchar] (25) NULL,
[MiddleName] [varchar] (25) NULL,
[Person] [bigint] NULL,
[ValidFrom] [varchar] (40) NULL,
[VALIDFROMTZID] [int] NULL,
[ValidTo] [varchar] (40) NULL,
[VALIDTOTZID] [int] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[CREATEDBY] [varchar] (20) NULL
)
WITH
(
LOCATION = N'Tables/Common/GAB/Main/DirPersonName/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
