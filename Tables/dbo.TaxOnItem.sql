CREATE TABLE [dbo].[TaxOnItem]
(
[AbatementPercent_IN] [numeric] (18, 6) NULL,
[CustomsChargeAsExpensePercent_IN] [numeric] (18, 6) NULL,
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[ExemptTax_BR] [varchar] (51) NULL,
[LoadOnInventory_IN] [varchar] (51) NULL,
[LoadOnInventoryPercent_IN] [numeric] (18, 6) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[TaxationCodeTable_BR] [bigint] NULL,
[TaxCode] [varchar] (10) NULL,
[TaxExemptCode] [varchar] (10) NULL,
[TaxItemGroup] [varchar] (10) NULL,
[WithoutTaxCredit_BR] [varchar] (51) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TaxOnItem] ADD CONSTRAINT [PK_TaxOnItem_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_TaxOnItem] ON [dbo].[TaxOnItem] ([TaxCode], [TaxItemGroup], [DataAreaId]) ON [PRIMARY]
GO
