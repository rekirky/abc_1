CREATE TABLE [dbo].[LedgerTransVoucherLink]
(
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[TransDate] [date] NULL,
[Voucher] [varchar] (30) NULL,
[VoucherGroupId] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LedgerTransVoucherLink] ADD CONSTRAINT [PK_LedgerTransVoucherLink_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
