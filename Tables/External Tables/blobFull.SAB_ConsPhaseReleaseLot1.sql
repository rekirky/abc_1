CREATE EXTERNAL TABLE [blobFull].[SAB_ConsPhaseReleaseLot]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[BuildingTypeId] [varchar] (20) NULL,
[ColorScheme] [bigint] NULL,
[DevelopmentId] [varchar] (10) NULL,
[FacadeId] [varchar] (20) NULL,
[FinancialInstance] [bigint] NULL,
[Orientation] [varchar] (51) NULL,
[PhaseRelease] [bigint] NULL,
[Sorting] [int] NULL,
[StatusId] [varchar] (10) NULL,
[StockStatus] [varchar] (20) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsLandDevelopment/WorksheetLine/SAB_ConsPhaseReleaseLot/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
