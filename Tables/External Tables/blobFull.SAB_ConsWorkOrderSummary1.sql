CREATE EXTERNAL TABLE [blobFull].[SAB_ConsWorkOrderSummary]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Amount] [float] NULL,
[ChangeAmount] [float] NULL,
[CostCategory] [bigint] NULL,
[CSRequestLine] [bigint] NULL,
[FinancialInstance] [bigint] NULL,
[RemainAmount] [float] NULL,
[Status] [varchar] (51) NULL,
[TaxItemGroup] [varchar] (10) NULL,
[TaxGroup] [varchar] (10) NULL,
[WorkOrder] [bigint] NULL,
[VENDSTATUS] [int] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[TradeType] [bigint] NULL,
[OH_WOPaymentStatus] [varchar] (51) NULL,
[OH_LastPaymentDate] [varchar] (40) NULL,
[OH_PaidAmount] [float] NULL,
[OH_InvoiceAmount] [float] NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsProcurement/WorksheetLine/SAB_ConsWorkOrderSummary/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
