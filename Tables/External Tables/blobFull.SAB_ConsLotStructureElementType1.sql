CREATE EXTERNAL TABLE [blobFull].[SAB_ConsLotStructureElementType]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[ElementType] [varchar] (20) NULL,
[ShowInOptionSelect] [varchar] (51) NULL,
[SortOrder] [int] NULL,
[WorkOrderBudget] [varchar] (51) NULL,
[ReportingElement] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[AllocationSource] [varchar] (51) NULL,
[OH_EnableForQuickQuote] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/General/Group/SAB_ConsLotStructureElementType/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
