CREATE EXTERNAL TABLE [blobFull].[SAB_ConsAllocationTable]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[AllocationId] [varchar] (30) NULL,
[AllocationRule] [bigint] NULL,
[BudgetExceeded] [varchar] (51) NULL,
[ElementType] [bigint] NULL,
[FromDate] [varchar] (40) NULL,
[LotStructureElementDestination] [bigint] NULL,
[Posted] [varchar] (51) NULL,
[ToDate] [varchar] (40) NULL,
[TransDate] [varchar] (40) NULL,
[Voucher] [varchar] (30) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/General/WorksheetHeader/SAB_ConsAllocationTable/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
