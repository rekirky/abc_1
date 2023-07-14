CREATE EXTERNAL TABLE [blobFull].[DimensionAttributeValueSetItem]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[DimensionAttributeValue] [bigint] NULL,
[DimensionAttributeValueSet] [bigint] NULL,
[DisplayValue] [varchar] (30) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[MODIFIEDTRANSACTIONID] [bigint] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[BackingRecordDataAreaId] [varchar] (4) NULL
)
WITH
(
LOCATION = N'Tables/Finance/FinancialDimensions/Reference/DimensionAttributeValueSetItem/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
