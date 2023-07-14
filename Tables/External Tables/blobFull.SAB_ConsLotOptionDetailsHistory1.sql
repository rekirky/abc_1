CREATE EXTERNAL TABLE [blobFull].[SAB_ConsLotOptionDetailsHistory]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[DiscountAmount] [float] NULL,
[DiscountType] [bigint] NULL,
[DynamicBOMDate] [varchar] (40) NULL,
[FinancialInstance] [bigint] NULL,
[ItemId] [varchar] (20) NULL,
[LineAmount] [float] NULL,
[Location] [bigint] NULL,
[LocationGroup] [bigint] NULL,
[LotStart] [bigint] NULL,
[MeasuredOptionChild] [varchar] (51) NULL,
[Measurement] [float] NULL,
[OPTION_] [bigint] NULL,
[OptionAddSalesPriceToBase] [varchar] (51) NULL,
[OptionIncludedOption] [varchar] (51) NULL,
[OptionMaster] [bigint] NULL,
[SalesOpportunity] [bigint] NULL,
[SalesPrice] [varchar] (51) NULL,
[SalesQty] [varchar] (51) NULL,
[Source] [varchar] (51) NULL,
[Type] [varchar] (51) NULL,
[ZeroPriceIndicator] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[MeasurementUnadjusted] [float] NULL,
[OptionMandatory] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/General/Transaction/SAB_ConsLotOptionDetailsHistory/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
