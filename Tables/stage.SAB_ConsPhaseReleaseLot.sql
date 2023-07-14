CREATE TABLE [stage].[SAB_ConsPhaseReleaseLot]
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
[BuildingTypeId] [varchar] (20) NULL,
[ColorScheme] [bigint] NULL,
[DevelopmentId] [varchar] (10) NULL,
[FacadeId] [varchar] (20) NULL,
[FinancialInstance] [bigint] NULL,
[Orientation] [varchar] (51) NULL,
[PhaseRelease] [bigint] NULL,
[Sorting] [int] NULL,
[StatusId] [varchar] (10) NULL,
[StockStatus] [varchar] (20) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
) ON [PRIMARY]
GO
