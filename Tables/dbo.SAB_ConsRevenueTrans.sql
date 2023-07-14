CREATE TABLE [dbo].[SAB_ConsRevenueTrans]
(
[AmountMST] [numeric] (18, 2) NULL,
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DefaultDimension] [varchar] (51) NULL,
[FinancialInstance] [bigint] NULL,
[LedgerDimension] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[PostingType] [varchar] (256) NULL,
[PostingTypeEnumID] [varchar] (51) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RevenueCategory] [bigint] NULL,
[TransDate] [date] NULL,
[Voucher] [varchar] (30) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsRevenueTrans] ADD CONSTRAINT [PK_SAB_ConsRevenueTrans_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_Sab_ConsRevenueTrans] ON [dbo].[SAB_ConsRevenueTrans] ([FinancialInstance]) ON [PRIMARY]
GO
