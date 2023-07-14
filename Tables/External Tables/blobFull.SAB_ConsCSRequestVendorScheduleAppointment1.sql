CREATE EXTERNAL TABLE [blobFull].[SAB_ConsCSRequestVendorScheduleAppointment]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[FromDateTime] [varchar] (40) NULL,
[FROMDATETIMETZID] [int] NULL,
[LineNumber] [bigint] NULL,
[PendingStatusReason] [bigint] NULL,
[RequestVendorSchedule] [bigint] NULL,
[ScheduleContact] [varchar] (120) NULL,
[Status] [varchar] (51) NULL,
[ToDateTime] [varchar] (40) NULL,
[TODATETIMETZID] [int] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[CompleteDateTime] [varchar] (40) NULL,
[COMPLETEDATETIMETZID] [int] NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsCS/WorksheetLine/SAB_ConsCSRequestVendorScheduleAppointment/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
