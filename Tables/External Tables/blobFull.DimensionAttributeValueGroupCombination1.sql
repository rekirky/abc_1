CREATE EXTERNAL TABLE [blobFull].[DimensionAttributeValueGroupCombination]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[DimensionAttributeValueCombination] [bigint] NULL,
[DimensionAttributeValueGroup] [bigint] NULL,
[Ordinal] [int] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[MODIFIEDTRANSACTIONID] [bigint] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL
)
WITH
(
LOCATION = N'Tables/Finance/FinancialDimensions/Reference/DimensionAttributeValueGroupCombination/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
