create   view [blobTransFull].[TaxParameters] as select 
LSN,[AdvancedSalesTaxPayment_IN]
,[AllowDuplicates]
,[BankExchRate_W]=case when [BankExchRate_W]=1 then 'Yes' else 'No' end ,BankExchRate_WFlag=cast([BankExchRate_W] as bit)
,[BASFormatMapping_AU]
,[CalculatePrinciple]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='TaxCalcPrin' and e.EnumCode=t.[CalculatePrinciple]) ,CalculatePrincipleEnumID=[CalculatePrinciple]
,[CashDiscOnInvoice]
,[CheckIntersection]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='CheckTaxGroups' and e.EnumCode=t.[CheckIntersection]) ,CheckIntersectionEnumID=[CheckIntersection]
,[CheckSalesTaxTransaction]=case when [CheckSalesTaxTransaction]=1 then 'Yes' else 'No' end ,CheckSalesTaxTransactionFlag=cast([CheckSalesTaxTransaction] as bit)
,[ConditionalTax]
,[CustomerCalculationDateType_IN]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='CustomerCalculationDateType_IN' and e.EnumCode=t.[CustomerCalculationDateType_IN]) ,CustomerCalculationDateType_INEnumID=[CustomerCalculationDateType_IN]
,[Customs_IN]
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DateForSecondTaxRaise_JP]=cast([DateForSecondTaxRaise_JP] as date)
,[DeductionPercent_LT]=cast([DeductionPercent_LT] as numeric(18,2))
,[DefaultInvoiceType_MY]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='InvoiceType_MY' and e.EnumCode=t.[DefaultInvoiceType_MY]) ,DefaultInvoiceType_MYEnumID=[DefaultInvoiceType_MY]
,[DelayTaxCalculation]=case when [DelayTaxCalculation]=1 then 'Yes' else 'No' end ,DelayTaxCalculationFlag=cast([DelayTaxCalculation] as bit)
,[DomesticTaxAggregatedERFormatMapping_IT]
,[DomesticTaxAnalyticERFormatMapping_IT]
,[DomesticTaxCancellationERFormatMapping_IT]
,[ExchRateDiffDocType_RU]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='CustVendExchRateDiffDocType_RU' and e.EnumCode=t.[ExchRateDiffDocType_RU]) ,ExchRateDiffDocType_RUEnumID=[ExchRateDiffDocType_RU]
,[Excise_IN]
,[EximIncentiveSchemes_IN]
,[FactureJournalFormatMappingID]
,[GSTAuditFileFormatMapping_MY]
,[GSTExemptPrintCode_MY]
,[GSTGAFVersion_MY]
,[GSTInvoiceFormat_MY]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='TaxGSTInvoiceFormat_MY' and e.EnumCode=t.[GSTInvoiceFormat_MY]) ,GSTInvoiceFormat_MYEnumID=[GSTInvoiceFormat_MY]
,[GSTSummaryDelimiter_MY]
,[IncludeDelimiterInGSTSummary_MY]
,[IncludeTaxCodeInGSTSummary_MY]
,[IncludeTaxValueInGSTSummary_MY]
,[IncomingVATPayment_RU]=case when [IncomingVATPayment_RU]=1 then 'Yes' else 'No' end ,IncomingVATPayment_RUFlag=cast([IncomingVATPayment_RU] as bit)
,[IndirectTaxERFormatMapping_RU]
,[ItemizedVATStatement_HU]
,[ItemizedVATStatementLimit_HU]=cast([ItemizedVATStatementLimit_HU] as numeric(18,2))
,[JournalInclTax]
,[KEY_]
,[MainEconomicActivityCode_CZ]
,[MainEconomicActivityCode_LT]
,[MandatoryTaxDirection]
,[MCRAutoTaxSearch]
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[NaturalPersonFirstName_CZ]
,[NaturalPersonLastName_CZ]
,[PARTITION]
,[PersonTitle_CZ]
,[PSNIsCanadianHSTRules]
,[PurchTaxOnOperations]
,[QuarterlyVATComERFormatMapping_IT]
,[RECID]
,[RECVERSION]
,[ReportAdjustment]=case when [ReportAdjustment]=1 then 'Yes' else 'No' end ,ReportAdjustmentFlag=cast([ReportAdjustment] as bit)
,[ReportUseVatDueDate_W]=case when [ReportUseVatDueDate_W]=1 then 'Yes' else 'No' end ,ReportUseVatDueDate_WFlag=cast([ReportUseVatDueDate_W] as bit)
,[RestoredVATCalcMethod_RU]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='RestoredVATCalcMethod_RU' and e.EnumCode=t.[RestoredVATCalcMethod_RU]) ,RestoredVATCalcMethod_RUEnumID=[RestoredVATCalcMethod_RU]
,[RestoredVATGainCalcMethod_RU]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='RestoredVATGainCalcMethod_RU' and e.EnumCode=t.[RestoredVATGainCalcMethod_RU]) ,RestoredVATGainCalcMethod_RUEnumID=[RestoredVATGainCalcMethod_RU]
,[ReverseOnCashDisc]
,[ReverseSettlementDatePrinciple_W]=case when [ReverseSettlementDatePrinciple_W]=1 then 'Yes' else 'No' end ,ReverseSettlementDatePrinciple_WFlag=cast([ReverseSettlementDatePrinciple_W] as bit)
,[SAFTAccountingBooksERFormatMapping_PL]
,[SAFTBankStatementERFormatMapping_PL]
,[SAFTERFormatMapping_W]
,[SAFTInventoryERFormatMapping_PL]
,[SAFTVATInvoicesERFormatMapping_PL]
,[SAFTVATSalesPurchERFormatMapping_PL]
,[SalesTax_IN]
,[SalesTaxPayableExchangeRateType]
,[SalesTaxReceivableExchangeRateType]
,[ServiceTax_IN]
,[ServiceTaxACBasis_IN]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='ServiceTaxACBasis_IN' and e.EnumCode=t.[ServiceTaxACBasis_IN]) ,ServiceTaxACBasis_INEnumID=[ServiceTaxACBasis_IN]
,[TaxBranchEnabled]
,[TaxCalculationDateType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='TaxCalculationDateType' and e.EnumCode=t.[TaxCalculationDateType]) ,TaxCalculationDateTypeEnumID=[TaxCalculationDateType]
,[TaxCalculationRetryNumber]
,[TaxCurConvPath]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='TaxCurConvPath' and e.EnumCode=t.[TaxCurConvPath]) ,TaxCurConvPathEnumID=[TaxCurConvPath]
,[TaxGroup]
,[TaxItemGroup]
,[TaxLessCashDisc]=case when [TaxLessCashDisc]=1 then 'Yes' else 'No' end ,TaxLessCashDiscFlag=cast([TaxLessCashDisc] as bit)
,[TaxObligationCompany]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='TaxObligationCompany' and e.EnumCode=t.[TaxObligationCompany]) ,TaxObligationCompanyEnumID=[TaxObligationCompany]
,[TaxOnOverpayment]=case when [TaxOnOverpayment]=1 then 'Yes' else 'No' end ,TaxOnOverpaymentFlag=cast([TaxOnOverpayment] as bit)
,[TaxpayerStatus_CZ]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='TaxPayerStatus_CZ' and e.EnumCode=t.[TaxpayerStatus_CZ]) ,TaxpayerStatus_CZEnumID=[TaxpayerStatus_CZ]
,[TaxpayerType_CZ]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='TaxpayerType_CZ' and e.EnumCode=t.[TaxpayerType_CZ]) ,TaxpayerType_CZEnumID=[TaxpayerType_CZ]
,[TaxRecoverable_IN]
,[TaxReport_JP]
,[TaxReportCombineVoucherForGainLoss]=case when [TaxReportCombineVoucherForGainLoss]=1 then 'Yes' else 'No' end ,TaxReportCombineVoucherForGainLossFlag=cast([TaxReportCombineVoucherForGainLoss] as bit)
,[TaxReportFactor_CZ]=cast([TaxReportFactor_CZ] as numeric(18,2))
,[TaxReportFormatMappingID_UK]
,[TaxSpecifyLine]
,[TaxSpecPosting_RU]
,[TaxYearlyComERFormatMapping_IT]
,[UseCommonSAFTReport]
,[UseSelfBilledInvoice_MY]
,[ValidateTaxCode]
,[VAT_IN]
,[VendorCalculationDateType_IN]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='VendorCalculationDateType_IN' and e.EnumCode=t.[VendorCalculationDateType_IN]) ,VendorCalculationDateType_INEnumID=[VendorCalculationDateType_IN]
 from blobFull.TaxParameters t
GO
