CREATE TABLE [dbo].[SAB_ConsWorkOrderConfirmJour]
(
[Acknowledged] [varchar] (3) NULL,
[AcknowledgedFlag] [bit] NULL,
[AcknowledgedByPerson] [bigint] NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[Vendor] [bigint] NULL,
[WorkOrder] [bigint] NULL,
[WorkOrderDate] [date] NULL,
[WorkOrderDescription] [varchar] (120) NULL,
[WorkOrderDocNum] [varchar] (23) NULL,
[WorkOrderVersion] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsWorkOrderConfirmJour] ADD CONSTRAINT [PK_SAB_ConsWorkOrderConfirmJour_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
