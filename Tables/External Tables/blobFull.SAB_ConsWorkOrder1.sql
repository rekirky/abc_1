CREATE EXTERNAL TABLE [blobFull].[SAB_ConsWorkOrder]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Canceled] [varchar] (51) NULL,
[ContractDetails] [varchar] (120) NULL,
[CSInsuranceReason] [bigint] NULL,
[CSRequest] [bigint] NULL,
[DocumentState] [varchar] (51) NULL,
[Hidden] [varchar] (51) NULL,
[IsModified] [varchar] (51) NULL,
[Name] [varchar] (120) NULL,
[PaymTermId] [varchar] (100) NULL,
[Status] [varchar] (51) NULL,
[Type] [varchar] (51) NULL,
[UseClaimRequest] [varchar] (51) NULL,
[WorkOrderId] [varchar] (30) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[InvoiceVendor] [bigint] NULL,
[Vendor] [bigint] NULL,
[Description] [varchar] (120) NULL,
[ElementFinancialInstance] [bigint] NULL,
[CashDiscCode] [varchar] (10) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsProcurement/WorksheetHeader/SAB_ConsWorkOrder/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
