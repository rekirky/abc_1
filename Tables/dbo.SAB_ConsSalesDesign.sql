CREATE TABLE [dbo].[SAB_ConsSalesDesign]
(
[BuildingTypeId] [varchar] (20) NULL,
[ColorScheme] [bigint] NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[EstimateType] [bigint] NULL,
[FacadeId] [varchar] (20) NULL,
[Inactive] [varchar] (3) NULL,
[InactiveFlag] [bit] NULL,
[Lot] [bigint] NULL,
[LotStructureElement] [bigint] NULL,
[Name] [varchar] (120) NULL,
[Opportunity] [bigint] NULL,
[Orientation] [varchar] (256) NULL,
[OrientationEnumID] [varchar] (51) NULL,
[OwnerWorker] [bigint] NULL,
[PARTITION] [bigint] NULL,
[PlanChange] [varchar] (3) NULL,
[PlanChangeFlag] [bit] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[SalesQuickQuotation] [bigint] NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsSalesDesign] ADD CONSTRAINT [PK_SAB_ConsSalesDesign_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
