CREATE EXTERNAL TABLE [blobFull].[SAB_ConsWorkOrderConfirmJour]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
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
)
WITH
(
LOCATION = N'Tables/General/Transaction/SAB_ConsWorkOrderConfirmJour/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
