CREATE EXTERNAL TABLE [blobFull].[SAB_ConsVendInvoiceTrans]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[CertificateHold] [varchar] (51) NULL,
[CertificateOverrideReason] [bigint] NULL,
[ChangeReason] [bigint] NULL,
[ClaimRequestJour] [bigint] NULL,
[CostCategory] [bigint] NULL,
[CSInsuranceReason] [bigint] NULL,
[CSRequestId] [varchar] (30) NULL,
[DefaultDimension] [varchar] (51) NULL,
[FinancialInstance] [bigint] NULL,
[InvoiceAmount] [float] NULL,
[TransDate] [varchar] (40) NULL,
[TransTxt] [varchar] (120) NULL,
[Voucher] [varchar] (30) NULL,
[WorkOrderId] [varchar] (30) NULL,
[WorkOrderSummary] [bigint] NULL,
[WrapInsuranceDeduction] [float] NULL,
[WrapInsuranceType] [bigint] NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[DataArea] [varchar] (4) NULL,
[TradeType] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/SAB_Cons/Transaction/SAB_ConsVendInvoiceTrans/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
