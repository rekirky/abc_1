CREATE TABLE [dbo].[SAB_ConsCostTrans]
(
[AmountMST] [numeric] (18, 2) NULL,
[CostCategory] [bigint] NULL,
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
[TransDate] [date] NULL,
[Voucher] [varchar] (30) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsCostTrans] ADD CONSTRAINT [PK_SAB_ConsCostTrans_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_Sab_ConsCostTrans] ON [dbo].[SAB_ConsCostTrans] ([FinancialInstance]) ON [PRIMARY]
GO
