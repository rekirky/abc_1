CREATE TABLE [dbo].[SAB_ConsCustInvoiceTable]
(
[ApprovalStatus] [varchar] (256) NULL,
[ApprovalStatusEnumID] [varchar] (51) NULL,
[CREATEDBY] [varchar] (20) NULL,
[CustAccount] [varchar] (20) NULL,
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DefaultDimension] [varchar] (51) NULL,
[DueDate] [date] NULL,
[InclTax] [varchar] (51) NULL,
[InvoiceAmount] [numeric] (18, 2) NULL,
[InvoiceId] [varchar] (30) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[PARTITION] [bigint] NULL,
[PaymTermId] [varchar] (100) NULL,
[Posted] [varchar] (3) NULL,
[PostedFlag] [bit] NULL,
[PostingProfile] [varchar] (10) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[TransDate] [date] NULL,
[TransTxt] [varchar] (120) NULL,
[Voucher] [varchar] (30) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsCustInvoiceTable] ADD CONSTRAINT [PK_SAB_ConsCustInvoiceTable_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[SAB_ConsCustInvoiceTable] TO [OH_ProductionPlanning]
GO
