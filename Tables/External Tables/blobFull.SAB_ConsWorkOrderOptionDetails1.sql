CREATE EXTERNAL TABLE [blobFull].[SAB_ConsWorkOrderOptionDetails]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[FinancialInstance] [bigint] NULL,
[Location] [bigint] NULL,
[LocationGroup] [bigint] NULL,
[OPTION_] [bigint] NULL,
[SalesQty] [varchar] (51) NULL,
[WorkOrder] [bigint] NULL,
[WorkOrderVersion] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/General/WorksheetLine/SAB_ConsWorkOrderOptionDetails/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
