create   view [blobTransInc].[TaxData] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[ConcessionalValue_IN]
,[CustomCalcQty_RU]
,[CustomCurrencyCode_RU]
,[CustomRateAmount_RU]
,[CustomsTariffCodeTable_IN]
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[ExciseDuty_PL]=cast([ExciseDuty_PL] as numeric(18,2))
,[ExciseTariffCodes_IN]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[PARTITION]
,[PreferentialValue_IN]=cast([PreferentialValue_IN] as numeric(18,6))
,[PrintCode]
,[RECID]
,[RECVERSION]
,[SalesTaxFormTypes_IN]
,[TaxCode]
,[TaxFromDate]=cast([TaxFromDate] as date)
,[TaxLimitMax]
,[TaxLimitMin]
,[TaxReductionPct_BR]=cast([TaxReductionPct_BR] as numeric(18,6))
,[TaxSubstitutionMarkupValue]=cast([TaxSubstitutionMarkupValue] as numeric(18,6))
,[TaxToDate]=cast([TaxToDate] as date)
,[TaxValue]=cast([TaxValue] as numeric(18,6))
,[VATExemptPct]=cast([VATExemptPct] as numeric(18,6))
 from stage.TaxData t
GO
