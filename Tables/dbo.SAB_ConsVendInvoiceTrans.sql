CREATE TABLE [dbo].[SAB_ConsVendInvoiceTrans]
(
[CertificateHold] [varchar] (3) NULL,
[CertificateHoldFlag] [bit] NULL,
[CertificateOverrideReason] [bigint] NULL,
[ChangeReason] [bigint] NULL,
[ClaimRequestJour] [bigint] NULL,
[CostCategory] [bigint] NULL,
[CSInsuranceReason] [bigint] NULL,
[CSRequestId] [varchar] (30) NULL,
[DataArea] [varchar] (4) NULL,
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DefaultDimension] [varchar] (51) NULL,
[FinancialInstance] [bigint] NULL,
[InvoiceAmount] [numeric] (18, 2) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[TradeType] [bigint] NULL,
[TransDate] [date] NULL,
[TransTxt] [varchar] (120) NULL,
[Voucher] [varchar] (30) NULL,
[WorkOrderId] [varchar] (30) NULL,
[WorkOrderSummary] [bigint] NULL,
[WrapInsuranceDeduction] [numeric] (18, 2) NULL,
[WrapInsuranceType] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsVendInvoiceTrans] ADD CONSTRAINT [PK_SAB_ConsVendInvoiceTrans_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
