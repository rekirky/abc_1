CREATE EXTERNAL TABLE [blobFull].[SAB_ConsWBSActivityTask]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Name] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[RequireImage] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsOperations/Main/SAB_ConsWBSActivityTask/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
