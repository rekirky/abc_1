CREATE EXTERNAL TABLE [blobFull].[SAB_ConsOption]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Description] [varchar] (120) NULL,
[DescriptionPurch] [varchar] (1000) NULL,
[DescriptionSales] [varchar] (1000) NULL,
[DesignCenterPricing] [varchar] (51) NULL,
[DocumentSection] [bigint] NULL,
[OptionCategory] [bigint] NULL,
[OptionId] [varchar] (10) NULL,
[Subfloor] [bigint] NULL,
[ValidFrom] [varchar] (40) NULL,
[ValidTo] [varchar] (40) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[UseAdjustedMeasurement] [varchar] (51) NULL,
[OH_DescriptionMarketing] [varchar] (1000) NULL,
[OH_MarketingShowExternally] [varchar] (51) NULL,
[OH_DescriptionInternal] [varchar] (1000) NULL,
[OH_DrawingRequirement] [varchar] (51) NULL,
[OH_OptionSalesPriceReductionTolerance] [float] NULL,
[OH_OverrideCategoryTolerance] [varchar] (51) NULL,
[OH_DrawingCode] [varchar] (10) NULL
)
WITH
(
LOCATION = N'Tables/General/Main/SAB_ConsOption/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
