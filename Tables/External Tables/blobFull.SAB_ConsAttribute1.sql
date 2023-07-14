CREATE EXTERNAL TABLE [blobFull].[SAB_ConsAttribute]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[AttributeClass_BuildingType] [varchar] (51) NULL,
[AttributeClass_Option] [varchar] (51) NULL,
[AttributeClass_LandBank] [varchar] (51) NULL,
[AttributeTab] [bigint] NULL,
[DataType] [varchar] (51) NULL,
[IsEnumeration] [varchar] (51) NULL,
[LocationDependent] [varchar] (51) NULL,
[Name] [varchar] (120) NULL,
[SalesDocumentPriceBreakout] [varchar] (51) NULL,
[Sorting] [int] NULL,
[Usage] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[UseAdjustedMeasurement] [varchar] (51) NULL,
[MultiSelect] [varchar] (51) NULL,
[MultiLine] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/General/Main/SAB_ConsAttribute/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
