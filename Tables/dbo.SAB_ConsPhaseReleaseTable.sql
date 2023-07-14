CREATE TABLE [dbo].[SAB_ConsPhaseReleaseTable]
(
[ActualReleaseDate] [date] NULL,
[CREATEDDATETIME] [date] NULL,
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (120) NULL,
[LotStructureElement] [bigint] NULL,
[LotStructureElementTo] [bigint] NULL,
[PARTITION] [bigint] NULL,
[PhaseReleaseId] [varchar] (30) NULL,
[PlannedReleaseDate] [date] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ReleaseStatus] [varchar] (256) NULL,
[ReleaseStatusEnumID] [varchar] (51) NULL,
[ScheduleGroupMode] [varchar] (256) NULL,
[ScheduleGroupModeEnumID] [varchar] (51) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsPhaseReleaseTable] ADD CONSTRAINT [PK_SAB_ConsPhaseReleaseTable_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
