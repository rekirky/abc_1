CREATE EXTERNAL TABLE [blobFull].[WorkCalendarDate]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[CalendarId] [varchar] (10) NULL,
[ClosedForPickup] [varchar] (51) NULL,
[Name] [varchar] (120) NULL,
[TransDate] [varchar] (40) NULL,
[WorkTimeControl] [varchar] (51) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[WorkTimeId] [varchar] (10) NULL
)
WITH
(
LOCATION = N'Tables/SupplyChain/ProductionControl/Group/WorkCalendarDate/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
