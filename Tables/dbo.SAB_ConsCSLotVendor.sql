CREATE TABLE [dbo].[SAB_ConsCSLotVendor]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Lot] [bigint] NULL,
[OPTION_] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[TradeType] [bigint] NULL,
[ValidFrom] [date] NULL,
[ValidTo] [date] NULL,
[Vendor] [bigint] NULL,
[WarrantyExpiryDate] [date] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsCSLotVendor] ADD CONSTRAINT [PK_SAB_ConsCSLotVendor_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
