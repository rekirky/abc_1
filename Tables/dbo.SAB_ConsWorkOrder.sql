CREATE TABLE [dbo].[SAB_ConsWorkOrder]
(
[Canceled] [varchar] (3) NULL,
[CanceledFlag] [bit] NULL,
[CashDiscCode] [varchar] (10) NULL,
[ContractDetails] [varchar] (120) NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[CSInsuranceReason] [bigint] NULL,
[CSRequest] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (120) NULL,
[DocumentState] [varchar] (256) NULL,
[DocumentStateEnumID] [varchar] (51) NULL,
[ElementFinancialInstance] [bigint] NULL,
[Hidden] [varchar] (3) NULL,
[HiddenFlag] [bit] NULL,
[InvoiceVendor] [bigint] NULL,
[IsModified] [varchar] (51) NULL,
[Name] [varchar] (120) NULL,
[PARTITION] [bigint] NULL,
[PaymTermId] [varchar] (100) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Status] [varchar] (256) NULL,
[StatusEnumID] [varchar] (51) NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[UseClaimRequest] [varchar] (3) NULL,
[UseClaimRequestFlag] [bit] NULL,
[Vendor] [bigint] NULL,
[WorkOrderId] [varchar] (30) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsWorkOrder] ADD CONSTRAINT [PK_SAB_ConsWorkOrder_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
