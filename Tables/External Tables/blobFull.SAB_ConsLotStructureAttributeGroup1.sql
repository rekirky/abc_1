CREATE EXTERNAL TABLE [blobFull].[SAB_ConsLotStructureAttributeGroup]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[GroupId] [varchar] (30) NULL,
[LEVEL_] [bigint] NULL,
[ElementType] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/General/Main/SAB_ConsLotStructureAttributeGroup/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
