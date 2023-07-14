CREATE TABLE [dbo].[SAB_ConsCSRequestVendorScheduleAppointment]
(
[CompleteDateTime] [date] NULL,
[COMPLETEDATETIMETZID] [int] NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FromDateTime] [date] NULL,
[FROMDATETIMETZID] [int] NULL,
[LineNumber] [bigint] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [date] NULL,
[PARTITION] [bigint] NULL,
[PendingStatusReason] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RequestVendorSchedule] [bigint] NULL,
[ScheduleContact] [varchar] (120) NULL,
[Status] [varchar] (256) NULL,
[StatusEnumID] [varchar] (51) NULL,
[ToDateTime] [date] NULL,
[TODATETIMETZID] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsCSRequestVendorScheduleAppointment] ADD CONSTRAINT [PK_SAB_ConsCSRequestVendorScheduleAppointment_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
