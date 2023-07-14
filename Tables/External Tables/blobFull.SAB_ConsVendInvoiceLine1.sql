CREATE EXTERNAL TABLE [blobFull].[SAB_ConsVendInvoiceLine]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Amount] [float] NULL,
[CertificateHold] [varchar] (51) NULL,
[ChangeReason] [bigint] NULL,
[ClaimRequestJour] [bigint] NULL,
[CostCategory] [bigint] NULL,
[CSInsuranceReason] [bigint] NULL,
[CSRequest] [bigint] NULL,
[DefaultDimension] [varchar] (51) NULL,
[FinancialInstance] [bigint] NULL,
[LedgerDimension] [varchar] (51) NULL,
[LineNumber] [bigint] NULL,
[LineType] [varchar] (51) NULL,
[TaxDirectionControl] [varchar] (51) NULL,
[TaxGroup] [varchar] (10) NULL,
[TaxItemGroup] [varchar] (10) NULL,
[TransTxt] [varchar] (120) NULL,
[VendInvoiceTable] [bigint] NULL,
[WorkOrderSummary] [bigint] NULL,
[WrapInsuranceDeduction] [float] NULL,
[WrapInsuranceType] [bigint] NULL,
[ServiceEndDate] [varchar] (40) NULL,
[ServiceStartDate] [varchar] (40) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[DataArea] [varchar] (4) NULL,
[TradeType] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/SAB_Cons/WorksheetLine/SAB_ConsVendInvoiceLine/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
