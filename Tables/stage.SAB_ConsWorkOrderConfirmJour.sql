CREATE TABLE [stage].[SAB_ConsWorkOrderConfirmJour]
(
[instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[WorkOrder] [bigint] NULL,
[WorkOrderDate] [varchar] (40) NULL,
[WorkOrderDocNum] [varchar] (23) NULL,
[WorkOrderVersion] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[Acknowledged] [varchar] (51) NULL,
[AcknowledgedByPerson] [bigint] NULL,
[Type] [varchar] (51) NULL,
[Vendor] [bigint] NULL,
[WorkOrderDescription] [varchar] (120) NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL
) ON [PRIMARY]
GO
