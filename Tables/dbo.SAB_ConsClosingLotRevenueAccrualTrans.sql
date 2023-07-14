CREATE TABLE [dbo].[SAB_ConsClosingLotRevenueAccrualTrans]
(
[Amount] [numeric] (18, 2) NULL,
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
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[Voucher] [varchar] (30) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsClosingLotRevenueAccrualTrans] ADD CONSTRAINT [PK_SAB_ConsClosingLotRevenueAccrualTrans_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
