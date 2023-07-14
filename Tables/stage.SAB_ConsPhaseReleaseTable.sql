CREATE TABLE [stage].[SAB_ConsPhaseReleaseTable]
(
[Instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[ActualReleaseDate] [varchar] (40) NULL,
[Description] [varchar] (120) NULL,
[LotStructureElement] [bigint] NULL,
[LotStructureElementTo] [bigint] NULL,
[PhaseReleaseId] [varchar] (30) NULL,
[PlannedReleaseDate] [varchar] (40) NULL,
[ReleaseStatus] [varchar] (51) NULL,
[ScheduleGroupMode] [varchar] (51) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL
) ON [PRIMARY]
GO
