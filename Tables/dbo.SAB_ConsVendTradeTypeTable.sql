CREATE TABLE [dbo].[SAB_ConsVendTradeTypeTable]
(
[BidGroupByElementType] [bigint] NULL,
[CSCostCategoryDefault] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[VendTradeTypeDescription] [varchar] (120) NULL,
[VendTradeTypeId] [varchar] (10) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsVendTradeTypeTable] ADD CONSTRAINT [PK_SAB_ConsVendTradeTypeTable_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
