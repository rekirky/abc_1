CREATE EXTERNAL TABLE [blobFull].[SAB_ConsLotStartLine]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[FinancialInstance] [bigint] NULL,
[Inactive] [varchar] (51) NULL,
[LotStart] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[WBSBuildingTypeEnumerationAttributeValue] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/General/WorksheetLine/SAB_ConsLotStartLine/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
