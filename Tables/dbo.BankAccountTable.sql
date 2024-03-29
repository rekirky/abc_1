CREATE TABLE [dbo].[BankAccountTable]
(
[AccountID] [varchar] (10) NULL,
[AccountNameKana_JP] [varchar] (40) NULL,
[AccountNum] [varchar] (48) NULL,
[ActiveFrom] [date] NULL,
[ACTIVEFROMTZID] [int] NULL,
[ActiveTo] [date] NULL,
[ACTIVETOTZID] [int] NULL,
[BankAccountStatus] [varchar] (256) NULL,
[BankAccountStatusEnumID] [varchar] (51) NULL,
[BankCIN] [varchar] (1) NULL,
[BankClearingCode] [varchar] (10) NULL,
[BankCodeType] [varchar] (256) NULL,
[BankCodeTypeEnumID] [varchar] (51) NULL,
[BankCompanyStatementName] [varchar] (16) NULL,
[BankConstantSymbol] [bigint] NULL,
[BankContractAccount] [varchar] (11) NULL,
[BankDestinationName] [varchar] (23) NULL,
[BankGroupId] [varchar] (10) NULL,
[BankInterbankClearingCode_BE] [varchar] (256) NULL,
[BankInterbankClearingCode_BEEnumID] [varchar] (51) NULL,
[BankMultiCurrency] [varchar] (51) NULL,
[BankPositivePayFormatName] [varchar] (10) NULL,
[BankPositivePayStartDate] [date] NULL,
[BankReconAllowedPennyDifference] [numeric] (18, 2) NULL,
[BankReconciliationEnabled] [varchar] (51) NULL,
[BankReconciliationMatchRuleSet] [bigint] NULL,
[BankReconciliationStmtAsPaymConfirm] [varchar] (51) NULL,
[BankReconMatchAutoAfterImport] [varchar] (51) NULL,
[BankSortCode] [varchar] (10) NULL,
[BankStatementFormat] [bigint] NULL,
[BankStatementName] [varchar] (120) NULL,
[BankSuffix] [varchar] (3) NULL,
[BankTransferCode] [varchar] (15) NULL,
[CellularPhone] [varchar] (20) NULL,
[CFMBankBalanceMinimum] [varchar] (51) NULL,
[CompanyPaymId] [varchar] (35) NULL,
[ContactPerson] [varchar] (120) NULL,
[CorrAccount_W] [varchar] (48) NULL,
[CurrencyCode] [varchar] (3) NULL,
[CurrencyOrder_TemplateName_RU] [varchar] (259) NULL,
[CurrencyOrder_TemplateRefRecId_RU] [bigint] NULL,
[CurrencySellOrder_TemplateName_RU] [varchar] (259) NULL,
[CurrencySellOrder_TemplateRefRecId_RU] [bigint] NULL,
[CustomerPaymentFeeLedgerDimension] [varchar] (51) NULL,
[CustPaymFeePost] [varchar] (51) NULL,
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DebitDirectId] [varchar] (35) NULL,
[DefaultDimension] [varchar] (51) NULL,
[DiscCreditMaxMST] [varchar] (51) NULL,
[DivisionPaymId] [varchar] (35) NULL,
[Email] [varchar] (80) NULL,
[FeeContractAccount] [varchar] (48) NULL,
[GiroContract] [varchar] (10) NULL,
[GiroContractAccount] [varchar] (11) NULL,
[IBAN] [varchar] (48) NULL,
[IFSC_IN] [varchar] (11) NULL,
[IncludeBankBarCode_FI] [varchar] (51) NULL,
[InvoiceRemitAmount] [numeric] (18, 2) NULL,
[InvoiceRemittanceLedgerDimension] [varchar] (51) NULL,
[isBankPrenote] [varchar] (51) NULL,
[IsNACHAFileBlocked] [varchar] (3) NULL,
[IsNACHAFileBlockedFlag] [bit] NULL,
[LedgerDimension] [varchar] (51) NULL,
[LedgerJournalNameId] [varchar] (10) NULL,
[Location] [bigint] NULL,
[LvDefaultBank] [varchar] (51) NULL,
[LvPayOrderType] [varchar] (256) NULL,
[LvPayOrderTypeEnumID] [varchar] (51) NULL,
[Name] [varchar] (120) NULL,
[NsfFeeMarkupGroupId] [varchar] (10) NULL,
[NsfFeeMarkupGroupModule] [varchar] (51) NULL,
[NsfLedgerJournalName] [varchar] (10) NULL,
[OH_ACHPrenoteBalancedRequired] [varchar] (51) NULL,
[OverDraftLimit] [numeric] (18, 2) NULL,
[Pager] [varchar] (20) NULL,
[PARTITION] [bigint] NULL,
[PaymForeignExportPath_LT] [varchar] (259) NULL,
[PaymLocalExportPath_LT] [varchar] (259) NULL,
[PaymOrderNumSeqId_W] [varchar] (10) NULL,
[Phone] [varchar] (20) NULL,
[PhoneLocal] [varchar] (10) NULL,
[PostingProfileBillsRemitCollection_IT] [varchar] (10) NULL,
[PostingProfileBillsRemitDiscount_IT] [varchar] (10) NULL,
[PostingProfileRemitNotes_IT] [varchar] (10) NULL,
[PrenoteResponseDays] [varchar] (51) NULL,
[PrintGiro_FI] [varchar] (51) NULL,
[QRIBAN_CH] [varchar] (48) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RegistrationNum] [varchar] (12) NULL,
[RemitCollectionAmount] [numeric] (18, 2) NULL,
[RemitDiscountAmount] [numeric] (18, 2) NULL,
[RemittanceCollectionLedgerDimension] [varchar] (51) NULL,
[RemittanceDiscountLedgerDimension] [varchar] (51) NULL,
[ReverseDebitCredit] [varchar] (3) NULL,
[ReverseDebitCreditFlag] [bit] NULL,
[Rfc_MX] [varchar] (13) NULL,
[SAB_ConsCashFlowBankLiquidityType] [bigint] NULL,
[SAB_ConsCashFlowBankType] [bigint] NULL,
[SMS] [varchar] (80) NULL,
[SpecificSymbol] [varchar] (30) NULL,
[SWIFTNo] [varchar] (20) NULL,
[TeleFax] [varchar] (20) NULL,
[Telex] [varchar] (20) NULL,
[TemplateFileName_RU] [varchar] (259) NULL,
[TemplateRefRecId_RU] [bigint] NULL,
[TimeZone] [varchar] (256) NULL,
[TimeZoneEnumID] [varchar] (51) NULL,
[TimeZonePreference] [varchar] (256) NULL,
[TimeZonePreferenceEnumID] [varchar] (51) NULL,
[TransType_JP] [varchar] (256) NULL,
[TransType_JPEnumID] [varchar] (51) NULL,
[UPIId_IN] [varchar] (50) NULL,
[UPIIName_IN] [varchar] (50) NULL,
[URL] [varchar] (255) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BankAccountTable] ADD CONSTRAINT [PK_BankAccountTable_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
