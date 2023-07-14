CREATE EXTERNAL TABLE [blobFull].[SAB_ConsPhaseReleaseTable]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[ActualReleaseDate] [varchar] (40) NULL,
[Description] [varchar] (120) NULL,
[LotStructureElement] [bigint] NULL,
[LotStructureElementTo] [bigint] NULL,
[PhaseReleaseId] [varchar] (30) NULL,
[PlannedReleaseDate] [varchar] (40) NULL,
[ReleaseStatus] [varchar] (51) NULL,
[ScheduleGroupMode] [varchar] (51) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsLandDevelopment/WorksheetHeader/SAB_ConsPhaseReleaseTable/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
