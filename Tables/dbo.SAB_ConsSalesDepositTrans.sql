CREATE TABLE [dbo].[SAB_ConsSalesDepositTrans]
(
[AlternateRemitToPerson] [bigint] NULL,
[Amount] [numeric] (18, 2) NULL,
[Correction] [varchar] (3) NULL,
[CorrectionFlag] [bit] NULL,
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DeductedAmount] [numeric] (18, 2) NULL,
[DepositReasonId] [varchar] (10) NULL,
[DepositRefund] [bigint] NULL,
[LineNumber] [bigint] NULL,
[Opportunity] [bigint] NULL,
[PARTITION] [bigint] NULL,
[PaymentDate] [date] NULL,
[PaymMode] [varchar] (10) NULL,
[PaymReference] [varchar] (35) NULL,
[PostingProfile] [varchar] (10) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[SaleOrigin] [bigint] NULL,
[SalesDesign] [bigint] NULL,
[TransDate] [date] NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[Voucher] [varchar] (30) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsSalesDepositTrans] ADD CONSTRAINT [PK_SAB_ConsSalesDepositTrans_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
