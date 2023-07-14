CREATE TABLE [dbo].[SAB_ConsLotStart]
(
[ChangeReason] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (120) NULL,
[ForecastStartDate] [date] NULL,
[LotStart] [varchar] (30) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ReleaseGroup] [bigint] NULL,
[StartedDateTime] [date] NULL,
[STARTEDDATETIMETZID] [int] NULL,
[Status] [varchar] (256) NULL,
[StatusEnumID] [varchar] (51) NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsLotStart] ADD CONSTRAINT [PK_SAB_ConsLotStart_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
