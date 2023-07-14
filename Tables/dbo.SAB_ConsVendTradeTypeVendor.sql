CREATE TABLE [dbo].[SAB_ConsVendTradeTypeVendor]
(
[BuildingTypeId] [varchar] (20) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FacadeId] [varchar] (20) NULL,
[IsPrimary] [varchar] (3) NULL,
[IsPrimaryFlag] [bit] NULL,
[ItemId] [varchar] (20) NULL,
[LotStructureElement] [bigint] NULL,
[OH_VendorSelectionBidding] [varchar] (51) NULL,
[OPTION_] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[TradeType] [bigint] NULL,
[ValidFrom] [date] NULL,
[ValidTo] [date] NULL,
[Vendor] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsVendTradeTypeVendor] ADD CONSTRAINT [PK_SAB_ConsVendTradeTypeVendor_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_Sab_ConsVendTradeTypeVendor] ON [dbo].[SAB_ConsVendTradeTypeVendor] ([LotStructureElement], [TradeType], [ValidFrom]) ON [PRIMARY]
GO
