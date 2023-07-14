CREATE EXTERNAL TABLE [blobFull].[DimensionAttributeValue]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[ActiveFrom] [varchar] (40) NULL,
[ActiveTo] [varchar] (40) NULL,
[DimensionAttribute] [bigint] NULL,
[EntityInstance] [bigint] NULL,
[GroupDimension] [varchar] (10) NULL,
[HashKey] [varchar] (50) NULL,
[IsBlockedForManualEntry] [varchar] (51) NULL,
[IsDeleted] [varchar] (51) NULL,
[IsSuspended] [varchar] (51) NULL,
[IsTotal] [varchar] (51) NULL,
[DisplayValue] [varchar] (30) NULL,
[Owner] [bigint] NULL,
[IsBalancing_PSN] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[BackingRecordDataAreaId] [varchar] (4) NULL,
[OriginalEntityInstance] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/Finance/FinancialDimensions/Main/DimensionAttributeValue/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
