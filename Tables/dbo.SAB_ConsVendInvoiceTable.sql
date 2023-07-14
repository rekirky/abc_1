CREATE TABLE [dbo].[SAB_ConsVendInvoiceTable]
(
[ApprovalStatus] [varchar] (256) NULL,
[ApprovalStatusEnumID] [varchar] (51) NULL,
[Backcharge] [varchar] (3) NULL,
[BackchargeFlag] [bit] NULL,
[CREATEDBY] [varchar] (20) NULL,
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DocumentDate] [date] NULL,
[InclTax] [varchar] (51) NULL,
[InvoiceAmount] [numeric] (18, 2) NULL,
[InvoiceId] [varchar] (30) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[OH_AIInvoice] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[PaymTermId] [varchar] (100) NULL,
[Posted] [varchar] (3) NULL,
[PostedFlag] [bit] NULL,
[PostingProfile] [varchar] (10) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Tax1099Amount] [numeric] (18, 2) NULL,
[Tax1099Fields] [bigint] NULL,
[Tax1099State] [varchar] (10) NULL,
[Tax1099StateAmount] [numeric] (18, 2) NULL,
[TransDate] [date] NULL,
[TransTxt] [varchar] (120) NULL,
[UtilityInvoiceEntryHold] [varchar] (3) NULL,
[UtilityInvoiceEntryHoldFlag] [bit] NULL,
[UtilityInvoiceEntryOverrideReason] [bigint] NULL,
[VendAccount] [varchar] (20) NULL,
[Voucher] [varchar] (30) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsVendInvoiceTable] ADD CONSTRAINT [PK_SAB_ConsVendInvoiceTable_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[SAB_ConsVendInvoiceTable] TO [OH_ProductionPlanning]
GO
