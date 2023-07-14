CREATE EXTERNAL TABLE [blobFull].[WorkCalendarDateLine]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[CalendarId] [varchar] (10) NULL,
[Effectivity] [varchar] (51) NULL,
[FromTime] [varchar] (51) NULL,
[PropertyId] [varchar] (10) NULL,
[ToTime] [varchar] (51) NULL,
[TransDate] [varchar] (40) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/SupplyChain/ProductionControl/Group/WorkCalendarDateLine/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
