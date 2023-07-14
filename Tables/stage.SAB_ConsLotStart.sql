CREATE TABLE [stage].[SAB_ConsLotStart]
(
[instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
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
) ON [PRIMARY]
GO
