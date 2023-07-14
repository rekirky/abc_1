CREATE TABLE [dbo].[SAB_ConsFieldPurchOrder]
(
[ChangeReason] [bigint] NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[CSInsuranceReason] [bigint] NULL,
[CSRequest] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[EquipRentalStartDate] [date] NULL,
[FieldPurchOrderId] [varchar] (30) NULL,
[FinancialInstance] [bigint] NULL,
[InternalExternal] [varchar] (256) NULL,
[InternalExternalEnumID] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Responsibility] [bigint] NULL,
[State] [varchar] (256) NULL,
[StateEnumID] [varchar] (51) NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[UseClaimRequest] [varchar] (3) NULL,
[UseClaimRequestFlag] [bit] NULL,
[Vendor] [bigint] NULL,
[WorkOrder] [bigint] NULL,
[WorkOrderDescription] [varchar] (120) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsFieldPurchOrder] ADD CONSTRAINT [PK_SAB_ConsFieldPurchOrder_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
