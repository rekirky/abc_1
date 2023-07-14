CREATE TABLE [dbo].[SAB_ConsCSWarrantyExpiryRule]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[LotStructureElement] [bigint] NULL,
[OPTION_] [bigint] NULL,
[OptionCategory] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[TradeType] [bigint] NULL,
[WarrantyPeriod] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsCSWarrantyExpiryRule] ADD CONSTRAINT [PK_SAB_ConsCSWarrantyExpiryRule_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
