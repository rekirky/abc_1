CREATE TABLE [dbo].[SAB_ConsInventTableTradeType]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[ItemId] [varchar] (20) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[TradeType] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsInventTableTradeType] ADD CONSTRAINT [PK_SAB_ConsInventTableTradeType_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_Sab_ConsInventTableTradeType] ON [dbo].[SAB_ConsInventTableTradeType] ([ItemId], [TradeType]) ON [PRIMARY]
GO
