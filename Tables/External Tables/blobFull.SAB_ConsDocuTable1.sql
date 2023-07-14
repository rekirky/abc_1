CREATE EXTERNAL TABLE [blobFull].[SAB_ConsDocuTable]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[BuildingTypeId] [varchar] (20) NULL,
[DocumentDate] [varchar] (40) NULL,
[DocuType] [bigint] NULL,
[FacadeId] [varchar] (20) NULL,
[FinancialInstance] [bigint] NULL,
[ValidFrom] [varchar] (40) NULL,
[ValidTo] [varchar] (40) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[Orientation] [varchar] (51) NULL,
[Description] [varchar] (120) NULL,
[OH_BlockedDelete] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsLandDevelopment/Main/SAB_ConsDocuTable/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
