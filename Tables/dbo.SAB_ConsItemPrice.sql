CREATE TABLE [dbo].[SAB_ConsItemPrice]
(
[BuildingTypeId] [varchar] (20) NULL,
[ChangeReason] [bigint] NULL,
[CostCategory] [bigint] NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FacadeId] [varchar] (20) NULL,
[ItemId] [varchar] (20) NULL,
[Location] [bigint] NULL,
[LocationGroup] [bigint] NULL,
[Lot] [bigint] NULL,
[LotStructureElement] [bigint] NULL,
[MasterAgreementVersion] [bigint] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [date] NULL,
[OH_IncludeParentPricing] [varchar] (51) NULL,
[OH_OptionUpgradePrice] [varchar] (51) NULL,
[OPTION_] [bigint] NULL,
[ParentOptionMaster] [bigint] NULL,
[PARTITION] [bigint] NULL,
[Price] [numeric] (18, 2) NULL,
[PriceType] [varchar] (256) NULL,
[PriceTypeEnumID] [varchar] (51) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[UnitId] [varchar] (10) NULL,
[ValidFrom] [date] NULL,
[ValidTo] [date] NULL,
[Vendor] [bigint] NULL,
[ZeroPriceIndicator] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsItemPrice] ADD CONSTRAINT [PK_SAB_ConsItemPrice_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
