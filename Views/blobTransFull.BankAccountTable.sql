create   view [blobTransFull].[BankAccountTable] as select 
LSN,[AccountID]
,[AccountNameKana_JP]
,[AccountNum]
,[ActiveFrom]=cast([ActiveFrom] as date)
,[ACTIVEFROMTZID]
,[ActiveTo]=cast([ActiveTo] as date)
,[ACTIVETOTZID]
,[BankAccountStatus]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='BankAccountHoldStatus' and e.EnumCode=t.[BankAccountStatus]) ,BankAccountStatusEnumID=[BankAccountStatus]
,[BankCIN]
,[BankClearingCode]
,[BankCodeType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='BankCodeType' and e.EnumCode=t.[BankCodeType]) ,BankCodeTypeEnumID=[BankCodeType]
,[BankCompanyStatementName]
,[BankConstantSymbol]
,[BankContractAccount]
,[BankDestinationName]
,[BankGroupId]
,[BankInterbankClearingCode_BE]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='BankInterbankClearingCode_BE' and e.EnumCode=t.[BankInterbankClearingCode_BE]) ,BankInterbankClearingCode_BEEnumID=[BankInterbankClearingCode_BE]
,[BankMultiCurrency]
,[BankPositivePayFormatName]
,[BankPositivePayStartDate]=cast([BankPositivePayStartDate] as date)
,[BankReconAllowedPennyDifference]=cast([BankReconAllowedPennyDifference] as numeric(18,2))
,[BankReconciliationEnabled]
,[BankReconciliationMatchRuleSet]
,[BankReconciliationStmtAsPaymConfirm]
,[BankReconMatchAutoAfterImport]
,[BankSortCode]
,[BankStatementFormat]
,[BankStatementName]
,[BankSuffix]
,[BankTransferCode]
,[CellularPhone]
,[CFMBankBalanceMinimum]
,[CompanyPaymId]
,[ContactPerson]
,[CorrAccount_W]
,[CurrencyCode]
,[CurrencyOrder_TemplateName_RU]
,[CurrencyOrder_TemplateRefRecId_RU]
,[CurrencySellOrder_TemplateName_RU]
,[CurrencySellOrder_TemplateRefRecId_RU]
,[CustomerPaymentFeeLedgerDimension]
,[CustPaymFeePost]
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DebitDirectId]
,[DefaultDimension]
,[DiscCreditMaxMST]
,[DivisionPaymId]
,[Email]
,[FeeContractAccount]
,[GiroContract]
,[GiroContractAccount]
,[IBAN]
,[IFSC_IN]
,[IncludeBankBarCode_FI]
,[InvoiceRemitAmount]=cast([InvoiceRemitAmount] as numeric(18,2))
,[InvoiceRemittanceLedgerDimension]
,[isBankPrenote]
,[IsNACHAFileBlocked]=case when [IsNACHAFileBlocked]=1 then 'Yes' else 'No' end ,IsNACHAFileBlockedFlag=cast([IsNACHAFileBlocked] as bit)
,[LedgerDimension]
,[LedgerJournalNameId]
,[Location]
,[LvDefaultBank]
,[LvPayOrderType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='LvPaymentOrderType' and e.EnumCode=t.[LvPayOrderType]) ,LvPayOrderTypeEnumID=[LvPayOrderType]
,[Name]
,[NsfFeeMarkupGroupId]
,[NsfFeeMarkupGroupModule]
,[NsfLedgerJournalName]
,[OH_ACHPrenoteBalancedRequired]
,[OverDraftLimit]=cast([OverDraftLimit] as numeric(18,2))
,[Pager]
,[PARTITION]
,[PaymForeignExportPath_LT]
,[PaymLocalExportPath_LT]
,[PaymOrderNumSeqId_W]
,[Phone]
,[PhoneLocal]
,[PostingProfileBillsRemitCollection_IT]
,[PostingProfileBillsRemitDiscount_IT]
,[PostingProfileRemitNotes_IT]
,[PrenoteResponseDays]
,[PrintGiro_FI]
,[QRIBAN_CH]
,[RECID]
,[RECVERSION]
,[RegistrationNum]
,[RemitCollectionAmount]=cast([RemitCollectionAmount] as numeric(18,2))
,[RemitDiscountAmount]=cast([RemitDiscountAmount] as numeric(18,2))
,[RemittanceCollectionLedgerDimension]
,[RemittanceDiscountLedgerDimension]
,[ReverseDebitCredit]=case when [ReverseDebitCredit]=1 then 'Yes' else 'No' end ,ReverseDebitCreditFlag=cast([ReverseDebitCredit] as bit)
,[Rfc_MX]
,[SAB_ConsCashFlowBankLiquidityType]
,[SAB_ConsCashFlowBankType]
,[SMS]
,[SpecificSymbol]
,[SWIFTNo]
,[TeleFax]
,[Telex]
,[TemplateFileName_RU]
,[TemplateRefRecId_RU]
,[TimeZone]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='Timezone' and e.EnumCode=t.[TimeZone]) ,TimeZoneEnumID=[TimeZone]
,[TimeZonePreference]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='DMFTimeZonePreference' and e.EnumCode=t.[TimeZonePreference]) ,TimeZonePreferenceEnumID=[TimeZonePreference]
,[TransType_JP]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='BankTransType_JP' and e.EnumCode=t.[TransType_JP]) ,TransType_JPEnumID=[TransType_JP]
,[UPIId_IN]
,[UPIIName_IN]
,[URL]
 from blobFull.BankAccountTable t
GO