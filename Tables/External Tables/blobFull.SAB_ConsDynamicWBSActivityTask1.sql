CREATE EXTERNAL TABLE [blobFull].[SAB_ConsDynamicWBSActivityTask]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[ActivityTask] [bigint] NULL,
[BuildingTypeId] [varchar] (20) NULL,
[CostCategory] [bigint] NULL,
[FacadeId] [varchar] (20) NULL,
[InternalExternal] [varchar] (51) NULL,
[LotStructureElement] [bigint] NULL,
[ReportingActivity] [bigint] NULL,
[ValidFrom] [varchar] (40) NULL,
[ValidTo] [varchar] (40) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[EnumerationAttributeValue] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsOperations/Main/SAB_ConsDynamicWBSActivityTask/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
