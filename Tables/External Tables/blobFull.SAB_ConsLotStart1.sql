CREATE EXTERNAL TABLE [blobFull].[SAB_ConsLotStart]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[ChangeReason] [bigint] NULL,
[Description] [varchar] (120) NULL,
[ForecastStartDate] [varchar] (40) NULL,
[LotStart] [varchar] (30) NULL,
[ReleaseGroup] [bigint] NULL,
[Status] [varchar] (51) NULL,
[Type] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[StartedDateTime] [varchar] (40) NULL,
[STARTEDDATETIMETZID] [int] NULL
)
WITH
(
LOCATION = N'Tables/General/WorksheetHeader/SAB_ConsLotStart/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
