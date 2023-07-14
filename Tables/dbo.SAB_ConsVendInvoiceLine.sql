CREATE TABLE [dbo].[SAB_ConsVendInvoiceLine]
(
[Amount] [numeric] (18, 2) NULL,
[CertificateHold] [varchar] (3) NULL,
[CertificateHoldFlag] [bit] NULL,
[ChangeReason] [bigint] NULL,
[ClaimRequestJour] [bigint] NULL,
[CostCategory] [bigint] NULL,
[CSInsuranceReason] [bigint] NULL,
[CSRequest] [bigint] NULL,
[DataArea] [varchar] (4) NULL,
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DefaultDimension] [varchar] (51) NULL,
[FinancialInstance] [bigint] NULL,
[LedgerDimension] [varchar] (51) NULL,
[LineNumber] [bigint] NULL,
[LineType] [varchar] (256) NULL,
[LineTypeEnumID] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ServiceEndDate] [date] NULL,
[ServiceStartDate] [date] NULL,
[TaxDirectionControl] [varchar] (3) NULL,
[TaxDirectionControlFlag] [bit] NULL,
[TaxGroup] [varchar] (10) NULL,
[TaxItemGroup] [varchar] (10) NULL,
[TradeType] [bigint] NULL,
[TransTxt] [varchar] (120) NULL,
[VendInvoiceTable] [bigint] NULL,
[WorkOrderSummary] [bigint] NULL,
[WrapInsuranceDeduction] [numeric] (18, 2) NULL,
[WrapInsuranceType] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsVendInvoiceLine] ADD CONSTRAINT [PK_SAB_ConsVendInvoiceLine_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
