create   view [blobTransFull].[VendInvoiceJour] as select 
LSN,[AttorneyDate_RU]=cast([AttorneyDate_RU] as date)
,[AttorneyId_RU]
,[AttorneyIssuedName_RU]
,[BankLCImportLine]
,[CashDisc]
,[CashDiscCode]
,[CashDiscDate]=cast([CashDiscDate] as date)
,[CashDiscPercent]
,[CFDIUUID_MX]
,[ConsigneeAccount_RU]
,[ConsignorAccount_RU]
,[ConsTarget_JP]
,[ContractNum_SA]
,[Correct_RU]
,[CorrectedInvoiceDate_RU]=cast([CorrectedInvoiceDate_RU] as date)
,[CorrectedInvoiceId_RU]
,[CorrectionType_RU]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='FactureCorrectionType_RU' and e.EnumCode=t.[CorrectionType_RU]) ,CorrectionType_RUEnumID=[CorrectionType_RU]
,[CostLedgerVoucher]
,[CountryRegionId]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[CurrencyCode]
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DefaultDimension]
,[DeliveryAddress_LT]
,[DeliveryDate_ES]=cast([DeliveryDate_ES] as date)
,[DeliveryName]
,[DeliveryName_LT]
,[DeliveryPostalAddress]
,[Description]
,[DlvAddress_LV]
,[DlvMode]
,[DlvTerm]
,[DocumentDate]=cast([DocumentDate] as date)
,[DocumentNum]
,[DocumentOrigin]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='DocumentOrigin' and e.EnumCode=t.[DocumentOrigin]) ,DocumentOriginEnumID=[DocumentOrigin]
,[DueDate]=cast([DueDate] as date)
,[EndDisc]
,[EndDiscMST]
,[EnterpriseNumber]
,[EUSalesList]
,[ExchRate]
,[ExchRateSecondary]
,[FacturedFully_RU]
,[FiscalDocumentType_BR]
,[FixedDueDate]=cast([FixedDueDate] as date)
,[ImportedAmount]=cast([ImportedAmount] as numeric(18,2))
,[ImportedSalesTax]
,[InclTax]
,[IntentLetterId_IT]
,[InterCompanyCompanyId]
,[InterCompanyLedgerVoucher]
,[InterCompanyPosted]
,[InterCompanySalesId]
,[InternalInvoiceId]
,[IntrastatAddValue_LV]=cast([IntrastatAddValue_LV] as numeric(18,2))
,[IntrastatDispatch]
,[IntrastatFulfillmentDate_HU]=cast([IntrastatFulfillmentDate_HU] as date)
,[InventBaileeReceiptReportId_RU]
,[InventProfileType_RU]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='InventProfileType_RU' and e.EnumCode=t.[InventProfileType_RU]) ,InventProfileType_RUEnumID=[InventProfileType_RU]
,[InvoiceAccount]
,[InvoiceAmount]=cast([InvoiceAmount] as numeric(18,2))
,[InvoiceAmountMST]=cast([InvoiceAmountMST] as numeric(18,2))
,[InvoiceDate]=cast([InvoiceDate] as date)
,[InvoiceId]
,[InvoiceRoundOff]=cast([InvoiceRoundOff] as numeric(18,2))
,[InvoiceSeries_MX]
,[InvoiceType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='PurchInvoiceType' and e.EnumCode=t.[InvoiceType]) ,InvoiceTypeEnumID=[InvoiceType]
,[ItemBuyerGroupId]
,[LanguageId]
,[LedgerVoucher]
,[Listcode]
,[LogisticsElectronicAddress]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[NonRealRevenue_RU]
,[NumberSequenceCode_LT]
,[numberSequenceGroup]
,[OffsessionId_RU]
,[OperationType_MX]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='VendorOperationType_MX' and e.EnumCode=t.[OperationType_MX]) ,OperationType_MXEnumID=[OperationType_MX]
,[OrderAccount]
,[ParmId]
,[PARTITION]
,[PartyTaxID]
,[PaymDayId]
,[Payment]
,[PaymentSched]
,[PaymId]
,[PlafondDate_IT]=cast([PlafondDate_IT] as date)
,[PostingProfile]
,[Prepayment]
,[Proforma]
,[PSNPurchasingCardType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='PSNPurchasingCardTransactionType' and e.EnumCode=t.[PSNPurchasingCardType]) ,PSNPurchasingCardTypeEnumID=[PSNPurchasingCardType]
,[PurchAgreementHeader_PSN]
,[PurchaseType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='PurchaseType' and e.EnumCode=t.[PurchaseType]) ,PurchaseTypeEnumID=[PurchaseType]
,[PurchId]
,[PurchReceiptDate_W]=cast([PurchReceiptDate_W] as date)
,[Qty]
,[ReasonTableRef_BR]
,[ReceivedDate]=cast([ReceivedDate] as date)
,[RECID]
,[RECVERSION]
,[RemittanceAddress]
,[ReportingCurrencyExchangeRate]
,[ReturnItemNum]
,[ReverseChargeAmount]=cast([ReverseChargeAmount] as numeric(18,2))
,[SalesBalance]=cast([SalesBalance] as numeric(18,2))
,[SalesPurchOperationType_BR]
,[ServiceCodeOnDlvAddress_BR]
,[SourceDocumentHeader]
,[SourceDocumentLine]
,[State]
,[StateInvoicePrinted_LV]=case when [StateInvoicePrinted_LV]=1 then 'Yes' else 'No' end ,StateInvoicePrinted_LVFlag=cast([StateInvoicePrinted_LV] as bit)
,[SumLineDisc]
,[SumMarkup]
,[SumMarkupMST]=cast([SumMarkupMST] as numeric(18,2))
,[SumTax]=cast([SumTax] as numeric(18,2))
,[TaxGroup]
,[TaxID]
,[TaxInvoicePurchId]
,[TaxPrintOnInvoice]
,[TaxRoundOff]=cast([TaxRoundOff] as numeric(18,2))
,[TaxSetoffVoucher_IN]
,[TaxSpecifyByLine]
,[TaxWithholdAmount_IN]=cast([TaxWithholdAmount_IN] as numeric(18,2))
,[TransportationDocument]
,[Triangulation]
,[UnitedVATInvoice_LT]
,[VATAmount_IN]=cast([VATAmount_IN] as numeric(18,2))
,[VATNum]
,[VATOnPayment_RU]
,[VendConsInvoice_JP]
,[VendFinalUser_BR]
,[VendGroup]
,[VendInvoiceDeclaration_IS]
,[VendInvoiceGroup]
,[VendorRequestedWorkerEmail]
,[VendorVATDate]=cast([VendorVATDate] as date)
,[VendPaymentGroup]
,[Volume]=cast([Volume] as numeric(18,6))
,[Weight]
,[WhoIsAuthor_LT]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='LtDocOriginator' and e.EnumCode=t.[WhoIsAuthor_LT]) ,WhoIsAuthor_LTEnumID=[WhoIsAuthor_LT]
 from blobFull.VendInvoiceJour t
GO
