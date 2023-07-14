CREATE EXTERNAL TABLE [blobFull].[SAB_ConsFieldPurchOrder]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[ChangeReason] [bigint] NULL,
[CSInsuranceReason] [bigint] NULL,
[CSRequest] [bigint] NULL,
[FieldPurchOrderId] [varchar] (30) NULL,
[FinancialInstance] [bigint] NULL,
[Responsibility] [bigint] NULL,
[State] [varchar] (51) NULL,
[Type] [varchar] (51) NULL,
[Vendor] [bigint] NULL,
[WorkOrder] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[UseClaimRequest] [varchar] (51) NULL,
[WorkOrderDescription] [varchar] (120) NULL,
[EquipRentalStartDate] [varchar] (40) NULL,
[InternalExternal] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsProcurement/WorksheetHeader/SAB_ConsFieldPurchOrder/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
