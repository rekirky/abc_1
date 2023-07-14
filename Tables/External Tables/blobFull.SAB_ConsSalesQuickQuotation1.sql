CREATE EXTERNAL TABLE [blobFull].[SAB_ConsSalesQuickQuotation]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[BuildingTypeId] [varchar] (20) NULL,
[Description] [varchar] (255) NULL,
[FacadeId] [varchar] (20) NULL,
[LotStructureElement] [bigint] NULL,
[Opportunity] [bigint] NULL,
[OwnerWorker] [bigint] NULL,
[QuickQuotationId] [varchar] (30) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[ColorScheme] [bigint] NULL,
[Orientation] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsSales/WorksheetHeader/SAB_ConsSalesQuickQuotation/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
