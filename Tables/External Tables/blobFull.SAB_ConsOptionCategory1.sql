CREATE EXTERNAL TABLE [blobFull].[SAB_ConsOptionCategory]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[IsActive] [varchar] (51) NULL,
[IsOptionAttributesInherited] [varchar] (51) NULL,
[LEVEL_] [bigint] NULL,
[LocationPrompt] [varchar] (51) NULL,
[MeasuredOptions] [varchar] (51) NULL,
[Name] [varchar] (254) NULL,
[NestedSetLeft] [bigint] NULL,
[NestedSetRight] [bigint] NULL,
[ParentOptionCategory] [bigint] NULL,
[ShowMaterialPrice] [varchar] (51) NULL,
[UnitId] [varchar] (10) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[DraftingRequired] [varchar] (51) NULL,
[AdminOption] [varchar] (51) NULL,
[OH_OptionSalesPriceReductionTolerance] [float] NULL,
[OH_PricingUpdateRule] [varchar] (51) NULL,
[OH_PricingAmountPercent] [float] NULL,
[OH_PricingSmartRoundingGroup] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/General/Group/SAB_ConsOptionCategory/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
