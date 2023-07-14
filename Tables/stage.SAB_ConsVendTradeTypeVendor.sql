CREATE TABLE [stage].[SAB_ConsVendTradeTypeVendor]
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
[FacadeId] [varchar] (20) NULL,
[IsPrimary] [varchar] (51) NULL,
[ItemId] [varchar] (20) NULL,
[LotStructureElement] [bigint] NULL,
[OPTION_] [bigint] NULL,
[TradeType] [bigint] NULL,
[ValidFrom] [varchar] (40) NULL,
[ValidTo] [varchar] (40) NULL,
[Vendor] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[OH_VendorSelectionBidding] [varchar] (51) NULL
) ON [PRIMARY]
GO
