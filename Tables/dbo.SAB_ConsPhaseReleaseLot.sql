CREATE TABLE [dbo].[SAB_ConsPhaseReleaseLot]
(
[BuildingTypeId] [varchar] (20) NULL,
[ColorScheme] [bigint] NULL,
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DevelopmentId] [varchar] (10) NULL,
[FacadeId] [varchar] (20) NULL,
[FinancialInstance] [bigint] NULL,
[Orientation] [varchar] (256) NULL,
[OrientationEnumID] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[PhaseRelease] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Sorting] [int] NULL,
[StatusId] [varchar] (10) NULL,
[StockStatus] [varchar] (20) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsPhaseReleaseLot] ADD CONSTRAINT [PK_SAB_ConsPhaseReleaseLot_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
