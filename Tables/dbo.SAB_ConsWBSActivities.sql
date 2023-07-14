CREATE TABLE [dbo].[SAB_ConsWBSActivities]
(
[ActivityNumber] [varchar] (50) NULL,
[ActualEndDate] [date] NULL,
[BudgetEndDate] [date] NULL,
[BudgetStartDate] [date] NULL,
[Closed] [varchar] (3) NULL,
[ClosedFlag] [bit] NULL,
[ConstructionPause] [varchar] (3) NULL,
[ConstructionPauseFlag] [bit] NULL,
[ConstructionPhase] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DoneByWorker] [bigint] NULL,
[Duration] [varchar] (51) NULL,
[DurationOrig] [varchar] (51) NULL,
[FinancialInstance] [bigint] NULL,
[LatestStartDate] [date] NULL,
[LockState] [varchar] (256) NULL,
[LockStateEnumID] [varchar] (51) NULL,
[Milestone] [varchar] (3) NULL,
[MilestoneFlag] [bit] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ReleaseGroup] [bigint] NULL,
[ReportingActivity] [bigint] NULL,
[Responsibility] [bigint] NULL,
[SchedEndDate] [date] NULL,
[SchedStartDate] [date] NULL,
[SchedStartDateOrig] [date] NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsWBSActivities] ADD CONSTRAINT [PK_SAB_ConsWBSActivities_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_Sab_ConsWbsActivities] ON [dbo].[SAB_ConsWBSActivities] ([ConstructionPhase], [DoneByWorker], [FinancialInstance], [ReportingActivity], [Responsibility]) ON [PRIMARY]
GO
