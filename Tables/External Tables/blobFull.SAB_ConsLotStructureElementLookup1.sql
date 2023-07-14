CREATE EXTERNAL TABLE [blobFull].[SAB_ConsLotStructureElementLookup]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[ElementType] [bigint] NULL,
[ElementTypeParent] [bigint] NULL,
[LevelParent] [bigint] NULL,
[LotStructureElement] [bigint] NULL,
[LotStructureElementParent] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsLandDevelopment/Main/SAB_ConsLotStructureElementLookup/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
