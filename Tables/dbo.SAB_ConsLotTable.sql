CREATE TABLE [dbo].[SAB_ConsLotTable]
(
[ACCRUED] [varchar] (3) NULL,
[ACCRUEDFlag] [bit] NULL,
[BuildingTypeId] [varchar] (20) NULL,
[BuyerOwned] [varchar] (3) NULL,
[BuyerOwnedFlag] [bit] NULL,
[CLOSED] [varchar] (3) NULL,
[CLOSEDFlag] [bit] NULL,
[ColorScheme] [bigint] NULL,
[CostPrice] [numeric] (18, 2) NULL,
[CSAccrualGroup] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (120) NULL,
[DevelopmentId] [varchar] (10) NULL,
[FacadeId] [varchar] (20) NULL,
[FINALIZATIONSTATUS] [varchar] (256) NULL,
[FINALIZATIONSTATUSEnumID] [int] NULL,
[FINALIZED] [varchar] (3) NULL,
[FINALIZEDFlag] [bit] NULL,
[HasTitle] [varchar] (3) NULL,
[HasTitleFlag] [bit] NULL,
[JobType] [bigint] NULL,
[Location] [bigint] NULL,
[LotNo] [varchar] (30) NULL,
[LotPremiumInventory] [numeric] (18, 2) NULL,
[LotStatusId] [varchar] (10) NULL,
[LotStructureElement] [bigint] NULL,
[OH_ConsLotPhase] [varchar] (10) NULL,
[OH_ExternalSalesPrice] [numeric] (18, 2) NULL,
[OH_LotMigrated] [varchar] (3) NULL,
[OH_LotMigratedFlag] [bit] NULL,
[OH_LotOwnershipType] [varchar] (50) NULL,
[Orientation] [varchar] (256) NULL,
[OrientationEnumID] [varchar] (51) NULL,
[Ownership] [varchar] (256) NULL,
[OwnershipEnumID] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[PHASERELEASEID] [varchar] (251) NULL,
[PriceLocked] [varchar] (3) NULL,
[PriceLockedFlag] [bit] NULL,
[PriceLockedAsOf] [date] NULL,
[PRICELOCKEDASOFTZID] [int] NULL,
[PriceLockedBy] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RELEASEGROUP] [bigint] NULL,
[SalesPerson] [bigint] NULL,
[SalesPrice] [numeric] (18, 2) NULL,
[SalesPriceBase] [numeric] (18, 2) NULL,
[SalesPriceDiscount] [numeric] (18, 2) NULL,
[SalesPriceLotPremium] [numeric] (18, 2) NULL,
[SalesPriceOption] [numeric] (18, 2) NULL,
[StockStatus] [varchar] (20) NULL,
[Subfloor] [bigint] NULL,
[TarionEnrolmentNumber] [varchar] (10) NULL,
[TitleDate] [date] NULL,
[Tract] [varchar] (10) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsLotTable] ADD CONSTRAINT [PK_SAB_ConsLotTable_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_Sab_ConsLotTable] ON [dbo].[SAB_ConsLotTable] ([LotStructureElement]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[SAB_ConsLotTable] TO [Eliant]
GO
GRANT SELECT ON  [dbo].[SAB_ConsLotTable] TO [OH_ProductionPlanning]
GO
