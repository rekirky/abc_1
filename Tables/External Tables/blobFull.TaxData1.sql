CREATE EXTERNAL TABLE [blobFull].[TaxData]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[ConcessionalValue_IN] [varchar] (51) NULL,
[CustomCalcQty_RU] [varchar] (51) NULL,
[CustomCurrencyCode_RU] [varchar] (3) NULL,
[CustomRateAmount_RU] [varchar] (51) NULL,
[CustomsTariffCodeTable_IN] [bigint] NULL,
[ExciseDuty_PL] [float] NULL,
[ExciseTariffCodes_IN] [bigint] NULL,
[PreferentialValue_IN] [varchar] (51) NULL,
[PrintCode] [varchar] (10) NULL,
[SalesTaxFormTypes_IN] [bigint] NULL,
[TaxCode] [varchar] (10) NULL,
[TaxFromDate] [varchar] (40) NULL,
[TaxLimitMax] [varchar] (51) NULL,
[TaxLimitMin] [varchar] (51) NULL,
[TaxReductionPct_BR] [varchar] (51) NULL,
[TaxSubstitutionMarkupValue] [varchar] (51) NULL,
[TaxToDate] [varchar] (40) NULL,
[TaxValue] [varchar] (51) NULL,
[VATExemptPct] [varchar] (51) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL
)
WITH
(
LOCATION = N'Tables/Finance/Tax/Group/TaxData/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
