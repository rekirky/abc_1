CREATE EXTERNAL TABLE [blobFull].[SAB_ConsReleaseGroup]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Description] [varchar] (120) NULL,
[ReleaseGroupId] [varchar] (20) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/General/Group/SAB_ConsReleaseGroup/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
