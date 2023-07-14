CREATE EXTERNAL TABLE [blobFull].[SAB_ConsBaseCostPriceAdjustments]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[BuildingTypeId] [varchar] (20) NULL,
[CostAdjustmentAmount] [float] NULL,
[FacadeId] [varchar] (20) NULL,
[LotStructureElement] [bigint] NULL,
[ValidFrom] [varchar] (40) NULL,
[ValidTo] [varchar] (40) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CostAdjustmentPercent] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/General/Worksheet/SAB_ConsBaseCostPriceAdjustments/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
