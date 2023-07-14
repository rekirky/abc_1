CREATE EXTERNAL TABLE [blobFull].[LogisticsLocationRole]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[IsContactInfo] [varchar] (51) NULL,
[IsPostalAddress] [varchar] (51) NULL,
[Name] [varchar] (40) NULL,
[Type] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[DisableAddOrEditInEmployeeSelfService] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/Common/GAB/Reference/LogisticsLocationRole/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
