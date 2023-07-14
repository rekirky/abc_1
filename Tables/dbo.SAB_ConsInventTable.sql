CREATE TABLE [dbo].[SAB_ConsInventTable]
(
[BidGroupByElementType] [bigint] NULL,
[CostCategory] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Depth] [numeric] (18, 6) NULL,
[Description] [varchar] (1000) NULL,
[Dimensional] [varchar] (3) NULL,
[DimensionalFlag] [bit] NULL,
[DocumentSection] [bigint] NULL,
[EquipRentalGroupItemId] [varchar] (20) NULL,
[Height] [numeric] (18, 6) NULL,
[Inactive] [varchar] (3) NULL,
[InactiveFlag] [bit] NULL,
[InventUnitId] [varchar] (10) NULL,
[ItemId] [varchar] (20) NULL,
[Manufacturer] [bigint] NULL,
[Name] [varchar] (120) NULL,
[PARTITION] [bigint] NULL,
[PurchUnitId] [varchar] (10) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RequireLotStartOverride] [varchar] (3) NULL,
[RequireLotStartOverrideFlag] [bit] NULL,
[SummaryQty] [numeric] (18, 6) NULL,
[SummaryUnitId] [varchar] (10) NULL,
[SummaryWorkOrder] [varchar] (3) NULL,
[SummaryWorkOrderFlag] [bit] NULL,
[TaxItemGroup] [varchar] (10) NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[UseNetMeasurement] [varchar] (3) NULL,
[UseNetMeasurementFlag] [bit] NULL,
[Width] [numeric] (18, 6) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsInventTable] ADD CONSTRAINT [PK_SAB_ConsInventTable_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_Sab_ConsInventTable] ON [dbo].[SAB_ConsInventTable] ([ItemId]) ON [PRIMARY]
GO
