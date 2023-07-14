CREATE TABLE [dbo].[SAB_ConsFieldPurchOrderLine]
(
[Amount] [numeric] (18, 2) NULL,
[ChangeReason] [bigint] NULL,
[CostCategory] [bigint] NULL,
[CSRequestLine] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[EquipRentalEstimatedEndDate] [date] NULL,
[EquipRentalStartDate] [date] NULL,
[FieldPurchOrder] [bigint] NULL,
[ItemId] [varchar] (20) NULL,
[LineNumber] [bigint] NULL,
[Name] [varchar] (1000) NULL,
[PARTITION] [bigint] NULL,
[PurchPrice] [varchar] (51) NULL,
[PurchQty] [varchar] (51) NULL,
[PurchUnit] [varchar] (10) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[TaxGroup] [varchar] (10) NULL,
[TaxItemGroup] [varchar] (10) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsFieldPurchOrderLine] ADD CONSTRAINT [PK_SAB_ConsFieldPurchOrderLine_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
