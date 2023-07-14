CREATE EXTERNAL TABLE [blobFull].[SAB_ConsDynamicWBS]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[BuildingTypeId] [varchar] (20) NULL,
[Concurrency] [int] NULL,
[ConstructionPhase] [bigint] NULL,
[Duration] [varchar] (51) NULL,
[EnumerationAttributeValue] [bigint] NULL,
[FacadeId] [varchar] (20) NULL,
[GroupRule] [varchar] (51) NULL,
[LotStructureElement] [bigint] NULL,
[Milestone] [varchar] (51) NULL,
[ReleaseGroup] [bigint] NULL,
[ReportingActivity] [bigint] NULL,
[Responsibility] [bigint] NULL,
[Type] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[GroupCount] [int] NULL,
[OptionCategory] [bigint] NULL,
[ElementType] [bigint] NULL,
[StockStatus] [varchar] (20) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsOperations/Group/SAB_ConsDynamicWBS/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
