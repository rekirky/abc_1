CREATE TABLE [stage].[TaxOnItem]
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
[AbatementPercent_IN] [varchar] (51) NULL,
[CustomsChargeAsExpensePercent_IN] [varchar] (51) NULL,
[ExemptTax_BR] [varchar] (51) NULL,
[LoadOnInventory_IN] [varchar] (51) NULL,
[LoadOnInventoryPercent_IN] [varchar] (51) NULL,
[TaxationCodeTable_BR] [bigint] NULL,
[TaxCode] [varchar] (10) NULL,
[TaxExemptCode] [varchar] (10) NULL,
[TaxItemGroup] [varchar] (10) NULL,
[WithoutTaxCredit_BR] [varchar] (51) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
) ON [PRIMARY]
GO
