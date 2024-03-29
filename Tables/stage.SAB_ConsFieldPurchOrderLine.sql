CREATE TABLE [stage].[SAB_ConsFieldPurchOrderLine]
(
[instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[Amount] [float] NULL,
[CostCategory] [bigint] NULL,
[CSRequestLine] [bigint] NULL,
[FieldPurchOrder] [bigint] NULL,
[ItemId] [varchar] (20) NULL,
[LineNumber] [bigint] NULL,
[PurchPrice] [varchar] (51) NULL,
[PurchQty] [varchar] (51) NULL,
[PurchUnit] [varchar] (10) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[Name] [varchar] (1000) NULL,
[TaxGroup] [varchar] (10) NULL,
[TaxItemGroup] [varchar] (10) NULL,
[ChangeReason] [bigint] NULL,
[EquipRentalEstimatedEndDate] [varchar] (40) NULL,
[EquipRentalStartDate] [varchar] (40) NULL
) ON [PRIMARY]
GO
