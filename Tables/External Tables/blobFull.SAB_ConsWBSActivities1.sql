CREATE EXTERNAL TABLE [blobFull].[SAB_ConsWBSActivities]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[ActivityNumber] [varchar] (50) NULL,
[ActualEndDate] [varchar] (40) NULL,
[BudgetEndDate] [varchar] (40) NULL,
[BudgetStartDate] [varchar] (40) NULL,
[Closed] [varchar] (51) NULL,
[ConstructionPhase] [bigint] NULL,
[DoneByWorker] [bigint] NULL,
[Duration] [varchar] (51) NULL,
[FinancialInstance] [bigint] NULL,
[LatestStartDate] [varchar] (40) NULL,
[LockState] [varchar] (51) NULL,
[Milestone] [varchar] (51) NULL,
[ReleaseGroup] [bigint] NULL,
[ReportingActivity] [bigint] NULL,
[Responsibility] [bigint] NULL,
[SchedEndDate] [varchar] (40) NULL,
[SchedStartDate] [varchar] (40) NULL,
[SchedStartDateOrig] [varchar] (40) NULL,
[Type] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[ConstructionPause] [varchar] (51) NULL,
[DurationOrig] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsOperations/Main/SAB_ConsWBSActivities/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
