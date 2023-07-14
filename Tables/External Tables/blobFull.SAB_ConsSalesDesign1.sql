CREATE EXTERNAL TABLE [blobFull].[SAB_ConsSalesDesign]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[BuildingTypeId] [varchar] (20) NULL,
[ColorScheme] [bigint] NULL,
[FacadeId] [varchar] (20) NULL,
[Inactive] [varchar] (51) NULL,
[Lot] [bigint] NULL,
[LotStructureElement] [bigint] NULL,
[Name] [varchar] (120) NULL,
[Opportunity] [bigint] NULL,
[Orientation] [varchar] (51) NULL,
[OwnerWorker] [bigint] NULL,
[PlanChange] [varchar] (51) NULL,
[Type] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[EstimateType] [bigint] NULL,
[SalesQuickQuotation] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsSales/WorksheetHeader/SAB_ConsSalesDesign/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
