CREATE TABLE [dbo].[SAB_ConsWorkOrderSummary]
(
[Amount] [numeric] (18, 2) NULL,
[ChangeAmount] [numeric] (18, 2) NULL,
[CostCategory] [bigint] NULL,
[CSRequestLine] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FinancialInstance] [bigint] NULL,
[OH_InvoiceAmount] [numeric] (18, 2) NULL,
[OH_LastPaymentDate] [date] NULL,
[OH_PaidAmount] [numeric] (18, 2) NULL,
[OH_WOPaymentStatus] [varchar] (256) NULL,
[OH_WOPaymentStatusEnumID] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RemainAmount] [numeric] (18, 2) NULL,
[Status] [varchar] (256) NULL,
[StatusEnumID] [varchar] (51) NULL,
[TaxGroup] [varchar] (10) NULL,
[TaxItemGroup] [varchar] (10) NULL,
[TradeType] [bigint] NULL,
[VENDSTATUS] [varchar] (256) NULL,
[VENDSTATUSEnumID] [int] NULL,
[WorkOrder] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsWorkOrderSummary] ADD CONSTRAINT [PK_SAB_ConsWorkOrderSummary_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_Sab_ConsWorkOrderSummary_RecID] ON [dbo].[SAB_ConsWorkOrderSummary] ([RECID]) ON [PRIMARY]
GO
