CREATE TABLE [dbo].[SAB_ConsCSRequestVendorSchedule]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[InsuranceReason] [bigint] NULL,
[LineNumber] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Request] [bigint] NULL,
[TradeType] [bigint] NULL,
[Vendor] [bigint] NULL,
[WarrantyExpiryDate] [date] NULL,
[WarrantyVendor] [varchar] (51) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsCSRequestVendorSchedule] ADD CONSTRAINT [PK_SAB_ConsCSRequestVendorSchedule_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
