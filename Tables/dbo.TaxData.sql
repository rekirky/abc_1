CREATE TABLE [dbo].[TaxData]
(
[ConcessionalValue_IN] [varchar] (51) NULL,
[CustomCalcQty_RU] [varchar] (51) NULL,
[CustomCurrencyCode_RU] [varchar] (3) NULL,
[CustomRateAmount_RU] [varchar] (51) NULL,
[CustomsTariffCodeTable_IN] [bigint] NULL,
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[ExciseDuty_PL] [numeric] (18, 2) NULL,
[ExciseTariffCodes_IN] [bigint] NULL,
[MODIFIEDDATETIME] [date] NULL,
[PARTITION] [bigint] NULL,
[PreferentialValue_IN] [numeric] (18, 6) NULL,
[PrintCode] [varchar] (10) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[SalesTaxFormTypes_IN] [bigint] NULL,
[TaxCode] [varchar] (10) NULL,
[TaxFromDate] [date] NULL,
[TaxLimitMax] [varchar] (51) NULL,
[TaxLimitMin] [varchar] (51) NULL,
[TaxReductionPct_BR] [numeric] (18, 6) NULL,
[TaxSubstitutionMarkupValue] [numeric] (18, 6) NULL,
[TaxToDate] [date] NULL,
[TaxValue] [numeric] (18, 6) NULL,
[VATExemptPct] [numeric] (18, 6) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TaxData] ADD CONSTRAINT [PK_TaxData_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_TaxData] ON [dbo].[TaxData] ([TaxCode], [DataAreaId]) ON [PRIMARY]
GO
