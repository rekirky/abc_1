CREATE EXTERNAL TABLE [blobFull].[SRSAnalysisEnums]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[EnumItemLabel] [varchar] (255) NULL,
[EnumItemName] [varchar] (30) NULL,
[EnumItemValue] [int] NULL,
[EnumName] [varchar] (120) NULL,
[LanguageId] [varchar] (7) NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/System/SystemAdministration/Reference/SRSAnalysisEnums/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
