CREATE TABLE [dbo].[SAB_ConsVendTradeTypeCategory]
(
[CostCategory] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[LotStructureElement] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[TradeType] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsVendTradeTypeCategory] ADD CONSTRAINT [PK_SAB_ConsVendTradeTypeCategory_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_Sab_ConsVendTradeTypeCategory_CC] ON [dbo].[SAB_ConsVendTradeTypeCategory] ([CostCategory], [LotStructureElement], [TradeType]) ON [PRIMARY]
GO
