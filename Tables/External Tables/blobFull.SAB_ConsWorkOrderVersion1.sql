CREATE EXTERNAL TABLE [blobFull].[SAB_ConsWorkOrderVersion]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[IsArchived] [varchar] (51) NULL,
[VersionDateTime] [varchar] (40) NULL,
[VERSIONDATETIMETZID] [int] NULL,
[WorkOrder] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/General/Transaction/SAB_ConsWorkOrderVersion/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
