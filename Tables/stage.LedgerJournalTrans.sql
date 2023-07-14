CREATE TABLE [stage].[LedgerJournalTrans]
(
[instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[TaxWithholdAlternateVendorAcct_TH] [varchar] (20) NULL,
[PoolRecId] [bigint] NULL,
[PaymentAccount] [varchar] (10) NULL,
[Company] [varchar] (4) NULL,
[AccountAgreementId_RU] [varchar] (30) NULL,
[AccountType] [varchar] (51) NULL,
[AcknowledgementDate] [varchar] (40) NULL,
[Addressing_PL] [varchar] (250) NULL,
[AgreementCompany_RU] [varchar] (4) NULL,
[AmountCurCredit] [float] NULL,
[AmountCurDebit] [float] NULL,
[AnnouncementNum_RU] [varchar] (30) NULL,
[Approved] [varchar] (51) NULL,
[Approver] [bigint] NULL,
[Attachments_CN] [int] NULL,
[BankAccountId] [varchar] (10) NULL,
[BankAgreementExt_RU] [bigint] NULL,
[BankBillOfExchangeNum] [varchar] (20) NULL,
[BankCentralBankPurposeCode] [varchar] (10) NULL,
[BankCentralBankPurposeText] [varchar] (210) NULL,
[BankCentralBankTransTypeCur_RU] [varchar] (10) NULL,
[BankChequeDepositTransRefRecID] [bigint] NULL,
[BankChequeNum] [varchar] (20) NULL,
[BankClientDocumentTypeId_RU] [varchar] (2) NULL,
[BankCommAccountId_RU] [varchar] (10) NULL,
[BankCurrency] [varchar] (3) NULL,
[BankCurrencyAmount] [float] NULL,
[BankCurrencyDealCourse_RU] [varchar] (51) NULL,
[BankCurrencyTransferLog_RU] [bigint] NULL,
[BankDepositNum] [varchar] (30) NULL,
[BankDepositVoucher] [varchar] (51) NULL,
[BankNegInstRecipientName] [varchar] (120) NULL,
[BankPaymentRegistrationNum_LV] [varchar] (20) NULL,
[BankPrintAccountNum_RU] [varchar] (20) NULL,
[BankPromissoryNoteNum] [varchar] (20) NULL,
[BankReconcileAccountAtPost] [varchar] (51) NULL,
[BankRemittanceFileId] [varchar] (10) NULL,
[BankRemittanceType] [varchar] (51) NULL,
[BankRespWorkerId_RU] [bigint] NULL,
[BankSpecAccountId_RU] [varchar] (10) NULL,
[BankTransType] [varchar] (10) NULL,
[BankVendAccountId_RU] [varchar] (20) NULL,
[BudgetSourceLedgerEntryUnposted] [bigint] NULL,
[Cancel] [varchar] (51) NULL,
[CashDiscAmount] [float] NULL,
[CashDiscBaseDate] [varchar] (40) NULL,
[CashDiscBaseDays] [int] NULL,
[CashDiscCode] [varchar] (10) NULL,
[CashDiscPercent] [varchar] (51) NULL,
[CashReceiptNum_LV] [varchar] (20) NULL,
[Correct_RU] [varchar] (51) NULL,
[CorrectedInvoiceDate_RU] [varchar] (40) NULL,
[CorrectedInvoiceId_RU] [varchar] (30) NULL,
[CorrectionType_RU] [varchar] (51) NULL,
[CurrencyCode] [varchar] (3) NULL,
[CustBankAccount] [bigint] NULL,
[CustEinvoicePaymDeliveryNum] [int] NULL,
[CustEinvoicePaymSectionNum] [int] NULL,
[CustEinvoicePaymTransNum] [int] NULL,
[CustFactureAutoCreate_RU] [varchar] (51) NULL,
[CustTransId] [bigint] NULL,
[CustVendAccount_PL] [varchar] (10) NULL,
[CustVendBankAccountId] [varchar] (10) NULL,
[CustVendName_PL] [varchar] (100) NULL,
[CustVendNegInstProtestReason] [varchar] (51) NULL,
[DateCashDisc] [varchar] (40) NULL,
[DebitCurrencyCode_LT] [varchar] (3) NULL,
[DefaultDimension] [varchar] (51) NULL,
[DocumentDate] [varchar] (40) NULL,
[DocumentNum] [varchar] (20) NULL,
[Due] [varchar] (40) NULL,
[EnterpriseNumber] [varchar] (50) NULL,
[ErrorCodePayment] [varchar] (30) NULL,
[EUSalesList] [varchar] (30) NULL,
[ExchRate] [varchar] (51) NULL,
[ExchRateSecond] [varchar] (51) NULL,
[FileCreated] [varchar] (40) NULL,
[ForeignCompany] [varchar] (4) NULL,
[ForeignVoucher] [varchar] (30) NULL,
[FreqCode] [varchar] (51) NULL,
[FreqValue] [int] NULL,
[FurtherPostingRecId] [bigint] NULL,
[FurtherPostingType] [varchar] (51) NULL,
[GSTHSTTaxType_CA] [varchar] (51) NULL,
[ImportDate] [varchar] (40) NULL,
[InformByPhone_LT] [varchar] (51) NULL,
[InformByTelex_LT] [varchar] (51) NULL,
[IntBank_LV] [varchar] (10) NULL,
[IntraComVATDueDate_W] [varchar] (51) NULL,
[Invisible] [varchar] (51) NULL,
[Invoice] [varchar] (30) NULL,
[InvoiceReleaseDate] [varchar] (51) NULL,
[INVOICERELEASEDATETZID] [int] NULL,
[JournalNum] [varchar] (30) NULL,
[LastTransferred] [varchar] (40) NULL,
[LedgerDimension] [varchar] (51) NULL,
[LedgerJournalDlvDate_ES] [varchar] (40) NULL,
[LedgerVoucherType_CN] [bigint] NULL,
[LineNum] [float] NULL,
[Listcode] [varchar] (51) NULL,
[LoadingDate] [varchar] (40) NULL,
[MarkedInvoice] [varchar] (30) NULL,
[MarkedInvoiceCompany] [varchar] (4) NULL,
[MarkedInvoiceRecId] [bigint] NULL,
[MarkupCode_RU] [varchar] (10) NULL,
[MCRCCGeneralLedgerId] [varchar] (30) NULL,
[MCRPaymOrderID] [varchar] (30) NULL,
[MCRPrintTxtOnCheck] [varchar] (51) NULL,
[MCRRefPaymID] [bigint] NULL,
[NegInstId] [varchar] (30) NULL,
[NoEdit] [varchar] (51) NULL,
[OffSessionId_RU] [varchar] (30) NULL,
[OffsetAccountAgreementId_RU] [varchar] (30) NULL,
[OffsetAccountType] [varchar] (51) NULL,
[OffsetAgreementCompany_RU] [varchar] (4) NULL,
[OffsetCompany] [varchar] (4) NULL,
[OffsetDefaultDimension] [varchar] (51) NULL,
[OffsetLedgerDimension] [varchar] (51) NULL,
[OffsetPostingProfile_RU] [varchar] (10) NULL,
[OffsetTxt] [varchar] (512) NULL,
[OperationType_MX] [varchar] (51) NULL,
[Payment] [varchar] (100) NULL,
[PaymentNotes] [varchar] (1000) NULL,
[PaymentSequenceNum] [int] NULL,
[PaymentStatus] [varchar] (51) NULL,
[PaymId] [varchar] (200) NULL,
[PaymInstruction1] [bigint] NULL,
[PaymInstruction2] [bigint] NULL,
[PaymInstruction3] [bigint] NULL,
[PaymInstruction4] [bigint] NULL,
[PaymMode] [varchar] (10) NULL,
[PaymPurpose_LT] [varchar] (5) NULL,
[PaymReference] [varchar] (35) NULL,
[PaymSpec] [varchar] (10) NULL,
[PostingProfile] [varchar] (10) NULL,
[Prepayment] [varchar] (51) NULL,
[Price] [float] NULL,
[PurchIdRange] [varchar] (250) NULL,
[PurchLedgerPosting] [varchar] (51) NULL,
[Qty] [varchar] (51) NULL,
[RCashDocRepresPersonId] [varchar] (20) NULL,
[RCashDocRepresType] [varchar] (51) NULL,
[RCashPayTransType] [varchar] (51) NULL,
[ReasonRefRecID] [bigint] NULL,
[ReceiptDate_W] [varchar] (40) NULL,
[RefCopyReverse_CN] [bigint] NULL,
[ReleaseDate] [varchar] (40) NULL,
[RELEASEDATETZID] [int] NULL,
[ReleaseDateComment] [varchar] (60) NULL,
[RemainAmount] [float] NULL,
[RemittanceAddress] [bigint] NULL,
[RemittanceLocation] [bigint] NULL,
[RemitteeCurrency] [varchar] (3) NULL,
[RepresPersonCard_W] [varchar] (100) NULL,
[RepresPersonName_W] [varchar] (120) NULL,
[ReverseDate] [varchar] (40) NULL,
[ReverseEntry] [varchar] (51) NULL,
[RevRecId] [bigint] NULL,
[SettleVoucher] [varchar] (51) NULL,
[SkipBlockedForManualEntryCheck] [varchar] (51) NULL,
[Tax1099Amount] [float] NULL,
[Tax1099Fields] [bigint] NULL,
[Tax1099RecId] [bigint] NULL,
[Tax1099State] [varchar] (10) NULL,
[Tax1099StateAmount] [float] NULL,
[TaxBase_W] [varchar] (51) NULL,
[TaxCode] [varchar] (10) NULL,
[TaxDirectionControl] [varchar] (51) NULL,
[TaxGroup] [varchar] (10) NULL,
[TaxItemGroup] [varchar] (10) NULL,
[TaxPeriodPaymentCode_PL] [varchar] (10) NULL,
[TaxWithholdCalculate_TH] [varchar] (51) NULL,
[TaxWithholdGroup] [varchar] (10) NULL,
[TaxWithholdItemGroupHeading_TH] [bigint] NULL,
[TransactionType] [varchar] (51) NULL,
[TransDate] [varchar] (40) NULL,
[Transfer] [varchar] (51) NULL,
[TransferCurrency_RU] [varchar] (3) NULL,
[Transferred] [varchar] (51) NULL,
[TransferredBy] [varchar] (20) NULL,
[TransferredOn] [varchar] (40) NULL,
[TransferredTo] [varchar] (30) NULL,
[Triangulation] [varchar] (51) NULL,
[Txt] [varchar] (512) NULL,
[VatDueDate_W] [varchar] (40) NULL,
[VATNumJournal] [varchar] (20) NULL,
[VATOnPayment_RU] [varchar] (51) NULL,
[VATOperationCode_RU] [varchar] (10) NULL,
[VATPaymRefRecId_RU] [bigint] NULL,
[VATTaxAgentVendAccount_RU] [varchar] (20) NULL,
[VendBankAccount] [bigint] NULL,
[VendInvoiceDeclaration_IS] [bigint] NULL,
[VendTransId] [bigint] NULL,
[Voucher] [varchar] (30) NULL,
[Voucher_CN] [varchar] (30) NULL,
[VendPaymFeeGroup_JP] [varchar] (20) NULL,
[CFDIUUID_MX] [varchar] (36) NULL,
[InvoiceSeries_MX] [varchar] (10) NULL,
[DirectDebitMandate] [bigint] NULL,
[ProvisionalAssessment_IN] [varchar] (51) NULL,
[LedgerDimensionName] [varchar] (100) NULL,
[FBSpedEcfDerexClasificationCode_BR] [bigint] NULL,
[ReportingCurrencyExchRate] [varchar] (51) NULL,
[ReportingCurrencyExchRateSecondary] [varchar] (51) NULL,
[CommProfileType_RU] [varchar] (51) NULL,
[UseOriginalDocumentAsFacture_RU] [varchar] (51) NULL,
[ElectronicPaymentNumber] [varchar] (35) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[SalesOrderId] [varchar] (30) NULL,
[CreditCardAuthTransRefId] [bigint] NULL,
[RevRecDeferredLine] [bigint] NULL,
[RevRecDeferredRecognizedQty] [varchar] (51) NULL,
[RevRecDeferredType] [varchar] (51) NULL,
[RevRecLedgerPostingType] [varchar] (51) NULL,
[RevRecNewValuesFromReallocation] [varchar] (51) NULL,
[RevRecSalesId] [varchar] (30) NULL,
[DelayTaxCalculation] [varchar] (51) NULL,
[IntentLetterId_IT] [varchar] (10) NULL,
[PlafondDate_IT] [varchar] (40) NULL,
[AssetLeaseStatus] [varchar] (51) NULL,
[AssetLeasePostingTypes] [varchar] (51) NULL,
[ITMCostArea] [varchar] (51) NULL,
[ITMCostTypeId] [varchar] (30) NULL,
[ITMCostRefRecId] [bigint] NULL,
[VendorVATDate] [varchar] (40) NULL,
[PaymSched] [varchar] (30) NULL,
[SubBillSchedLineRecId] [varchar] (51) NULL,
[SubBillRenewalLineRecId] [varchar] (51) NULL,
[SubBillEscalationTableRecId] [varchar] (51) NULL
) ON [PRIMARY]
GO
