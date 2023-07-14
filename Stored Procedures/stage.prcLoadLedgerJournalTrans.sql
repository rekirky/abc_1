create   proc [stage].[prcLoadLedgerJournalTrans] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.LedgerJournalTrans t 
where exists 
	(select 1 from stage.LedgerJournalTrans s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.LedgerJournalTrans with(tablock) as t
using (select * from blobTransInc.LedgerJournalTrans where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[AccountAgreementId_RU]=s.[AccountAgreementId_RU],[AccountType]=s.[AccountType],[AccountTypeEnumID]=s.[AccountTypeEnumID],[AcknowledgementDate]=s.[AcknowledgementDate],[Addressing_PL]=s.[Addressing_PL],[AgreementCompany_RU]=s.[AgreementCompany_RU],[AmountCurCredit]=s.[AmountCurCredit],[AmountCurDebit]=s.[AmountCurDebit],[AnnouncementNum_RU]=s.[AnnouncementNum_RU],[Approved]=s.[Approved],[Approver]=s.[Approver],[AssetLeasePostingTypes]=s.[AssetLeasePostingTypes],[AssetLeasePostingTypesEnumID]=s.[AssetLeasePostingTypesEnumID],[AssetLeaseStatus]=s.[AssetLeaseStatus],[Attachments_CN]=s.[Attachments_CN],[BankAccountId]=s.[BankAccountId],[BankAgreementExt_RU]=s.[BankAgreementExt_RU],[BankBillOfExchangeNum]=s.[BankBillOfExchangeNum],[BankCentralBankPurposeCode]=s.[BankCentralBankPurposeCode],[BankCentralBankPurposeText]=s.[BankCentralBankPurposeText],[BankCentralBankTransTypeCur_RU]=s.[BankCentralBankTransTypeCur_RU],[BankChequeDepositTransRefRecID]=s.[BankChequeDepositTransRefRecID],[BankChequeNum]=s.[BankChequeNum],[BankClientDocumentTypeId_RU]=s.[BankClientDocumentTypeId_RU],[BankCommAccountId_RU]=s.[BankCommAccountId_RU],[BankCurrency]=s.[BankCurrency],[BankCurrencyAmount]=s.[BankCurrencyAmount],[BankCurrencyDealCourse_RU]=s.[BankCurrencyDealCourse_RU],[BankCurrencyTransferLog_RU]=s.[BankCurrencyTransferLog_RU],[BankDepositNum]=s.[BankDepositNum],[BankDepositVoucher]=s.[BankDepositVoucher],[BankNegInstRecipientName]=s.[BankNegInstRecipientName],[BankPaymentRegistrationNum_LV]=s.[BankPaymentRegistrationNum_LV],[BankPrintAccountNum_RU]=s.[BankPrintAccountNum_RU],[BankPromissoryNoteNum]=s.[BankPromissoryNoteNum],[BankReconcileAccountAtPost]=s.[BankReconcileAccountAtPost],[BankReconcileAccountAtPostFlag]=s.[BankReconcileAccountAtPostFlag],[BankRemittanceFileId]=s.[BankRemittanceFileId],[BankRemittanceType]=s.[BankRemittanceType],[BankRemittanceTypeEnumID]=s.[BankRemittanceTypeEnumID],[BankRespWorkerId_RU]=s.[BankRespWorkerId_RU],[BankSpecAccountId_RU]=s.[BankSpecAccountId_RU],[BankTransType]=s.[BankTransType],[BankVendAccountId_RU]=s.[BankVendAccountId_RU],[BudgetSourceLedgerEntryUnposted]=s.[BudgetSourceLedgerEntryUnposted],[Cancel]=s.[Cancel],[CashDiscAmount]=s.[CashDiscAmount],[CashDiscBaseDate]=s.[CashDiscBaseDate],[CashDiscBaseDays]=s.[CashDiscBaseDays],[CashDiscCode]=s.[CashDiscCode],[CashDiscPercent]=s.[CashDiscPercent],[CashReceiptNum_LV]=s.[CashReceiptNum_LV],[CFDIUUID_MX]=s.[CFDIUUID_MX],[CommProfileType_RU]=s.[CommProfileType_RU],[CommProfileType_RUEnumID]=s.[CommProfileType_RUEnumID],[Company]=s.[Company],[Correct_RU]=s.[Correct_RU],[CorrectedInvoiceDate_RU]=s.[CorrectedInvoiceDate_RU],[CorrectedInvoiceId_RU]=s.[CorrectedInvoiceId_RU],[CorrectionType_RU]=s.[CorrectionType_RU],[CorrectionType_RUEnumID]=s.[CorrectionType_RUEnumID],[CreditCardAuthTransRefId]=s.[CreditCardAuthTransRefId],[CurrencyCode]=s.[CurrencyCode],[CustBankAccount]=s.[CustBankAccount],[CustEinvoicePaymDeliveryNum]=s.[CustEinvoicePaymDeliveryNum],[CustEinvoicePaymSectionNum]=s.[CustEinvoicePaymSectionNum],[CustEinvoicePaymTransNum]=s.[CustEinvoicePaymTransNum],[CustFactureAutoCreate_RU]=s.[CustFactureAutoCreate_RU],[CustTransId]=s.[CustTransId],[CustVendAccount_PL]=s.[CustVendAccount_PL],[CustVendBankAccountId]=s.[CustVendBankAccountId],[CustVendName_PL]=s.[CustVendName_PL],[CustVendNegInstProtestReason]=s.[CustVendNegInstProtestReason],[CustVendNegInstProtestReasonEnumID]=s.[CustVendNegInstProtestReasonEnumID],[DataAreaId]=s.[DataAreaId],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DateCashDisc]=s.[DateCashDisc],[DebitCurrencyCode_LT]=s.[DebitCurrencyCode_LT],[DefaultDimension]=s.[DefaultDimension],[DelayTaxCalculation]=s.[DelayTaxCalculation],[DelayTaxCalculationFlag]=s.[DelayTaxCalculationFlag],[DirectDebitMandate]=s.[DirectDebitMandate],[DocumentDate]=s.[DocumentDate],[DocumentNum]=s.[DocumentNum],[Due]=s.[Due],[ElectronicPaymentNumber]=s.[ElectronicPaymentNumber],[EnterpriseNumber]=s.[EnterpriseNumber],[ErrorCodePayment]=s.[ErrorCodePayment],[EUSalesList]=s.[EUSalesList],[ExchRate]=s.[ExchRate],[ExchRateSecond]=s.[ExchRateSecond],[FBSpedEcfDerexClasificationCode_BR]=s.[FBSpedEcfDerexClasificationCode_BR],[FileCreated]=s.[FileCreated],[ForeignCompany]=s.[ForeignCompany],[ForeignVoucher]=s.[ForeignVoucher],[FreqCode]=s.[FreqCode],[FreqCodeEnumID]=s.[FreqCodeEnumID],[FreqValue]=s.[FreqValue],[FurtherPostingRecId]=s.[FurtherPostingRecId],[FurtherPostingType]=s.[FurtherPostingType],[GSTHSTTaxType_CA]=s.[GSTHSTTaxType_CA],[GSTHSTTaxType_CAEnumID]=s.[GSTHSTTaxType_CAEnumID],[ImportDate]=s.[ImportDate],[InformByPhone_LT]=s.[InformByPhone_LT],[InformByTelex_LT]=s.[InformByTelex_LT],[IntBank_LV]=s.[IntBank_LV],[IntentLetterId_IT]=s.[IntentLetterId_IT],[IntraComVATDueDate_W]=s.[IntraComVATDueDate_W],[Invisible]=s.[Invisible],[InvisibleFlag]=s.[InvisibleFlag],[Invoice]=s.[Invoice],[InvoiceReleaseDate]=s.[InvoiceReleaseDate],[INVOICERELEASEDATETZID]=s.[INVOICERELEASEDATETZID],[InvoiceSeries_MX]=s.[InvoiceSeries_MX],[ITMCostArea]=s.[ITMCostArea],[ITMCostAreaEnumID]=s.[ITMCostAreaEnumID],[ITMCostRefRecId]=s.[ITMCostRefRecId],[ITMCostTypeId]=s.[ITMCostTypeId],[JournalNum]=s.[JournalNum],[LastTransferred]=s.[LastTransferred],[LedgerDimension]=s.[LedgerDimension],[LedgerDimensionName]=s.[LedgerDimensionName],[LedgerJournalDlvDate_ES]=s.[LedgerJournalDlvDate_ES],[LedgerVoucherType_CN]=s.[LedgerVoucherType_CN],[LineNum]=s.[LineNum],[Listcode]=s.[Listcode],[LoadingDate]=s.[LoadingDate],[MarkedInvoice]=s.[MarkedInvoice],[MarkedInvoiceCompany]=s.[MarkedInvoiceCompany],[MarkedInvoiceRecId]=s.[MarkedInvoiceRecId],[MarkupCode_RU]=s.[MarkupCode_RU],[MCRCCGeneralLedgerId]=s.[MCRCCGeneralLedgerId],[MCRPaymOrderID]=s.[MCRPaymOrderID],[MCRPrintTxtOnCheck]=s.[MCRPrintTxtOnCheck],[MCRRefPaymID]=s.[MCRRefPaymID],[MODIFIEDDATETIME]=s.[MODIFIEDDATETIME],[NegInstId]=s.[NegInstId],[NoEdit]=s.[NoEdit],[NoEditFlag]=s.[NoEditFlag],[OffSessionId_RU]=s.[OffSessionId_RU],[OffsetAccountAgreementId_RU]=s.[OffsetAccountAgreementId_RU],[OffsetAccountType]=s.[OffsetAccountType],[OffsetAccountTypeEnumID]=s.[OffsetAccountTypeEnumID],[OffsetAgreementCompany_RU]=s.[OffsetAgreementCompany_RU],[OffsetCompany]=s.[OffsetCompany],[OffsetDefaultDimension]=s.[OffsetDefaultDimension],[OffsetLedgerDimension]=s.[OffsetLedgerDimension],[OffsetPostingProfile_RU]=s.[OffsetPostingProfile_RU],[OffsetTxt]=s.[OffsetTxt],[OperationType_MX]=s.[OperationType_MX],[OperationType_MXEnumID]=s.[OperationType_MXEnumID],[PARTITION]=s.[PARTITION],[Payment]=s.[Payment],[PaymentAccount]=s.[PaymentAccount],[PaymentNotes]=s.[PaymentNotes],[PaymentSequenceNum]=s.[PaymentSequenceNum],[PaymentStatus]=s.[PaymentStatus],[PaymentStatusEnumID]=s.[PaymentStatusEnumID],[PaymId]=s.[PaymId],[PaymInstruction1]=s.[PaymInstruction1],[PaymInstruction2]=s.[PaymInstruction2],[PaymInstruction3]=s.[PaymInstruction3],[PaymInstruction4]=s.[PaymInstruction4],[PaymMode]=s.[PaymMode],[PaymPurpose_LT]=s.[PaymPurpose_LT],[PaymReference]=s.[PaymReference],[PaymSched]=s.[PaymSched],[PaymSpec]=s.[PaymSpec],[PlafondDate_IT]=s.[PlafondDate_IT],[PoolRecId]=s.[PoolRecId],[PostingProfile]=s.[PostingProfile],[Prepayment]=s.[Prepayment],[PrepaymentFlag]=s.[PrepaymentFlag],[Price]=s.[Price],[ProvisionalAssessment_IN]=s.[ProvisionalAssessment_IN],[PurchIdRange]=s.[PurchIdRange],[PurchLedgerPosting]=s.[PurchLedgerPosting],[Qty]=s.[Qty],[RCashDocRepresPersonId]=s.[RCashDocRepresPersonId],[RCashDocRepresType]=s.[RCashDocRepresType],[RCashDocRepresTypeEnumID]=s.[RCashDocRepresTypeEnumID],[RCashPayTransType]=s.[RCashPayTransType],[RCashPayTransTypeEnumID]=s.[RCashPayTransTypeEnumID],[ReasonRefRecID]=s.[ReasonRefRecID],[ReceiptDate_W]=s.[ReceiptDate_W],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[RefCopyReverse_CN]=s.[RefCopyReverse_CN],[ReleaseDate]=s.[ReleaseDate],[ReleaseDateComment]=s.[ReleaseDateComment],[RELEASEDATETZID]=s.[RELEASEDATETZID],[RemainAmount]=s.[RemainAmount],[RemittanceAddress]=s.[RemittanceAddress],[RemittanceLocation]=s.[RemittanceLocation],[RemitteeCurrency]=s.[RemitteeCurrency],[ReportingCurrencyExchRate]=s.[ReportingCurrencyExchRate],[ReportingCurrencyExchRateSecondary]=s.[ReportingCurrencyExchRateSecondary],[RepresPersonCard_W]=s.[RepresPersonCard_W],[RepresPersonName_W]=s.[RepresPersonName_W],[ReverseDate]=s.[ReverseDate],[ReverseEntry]=s.[ReverseEntry],[ReverseEntryFlag]=s.[ReverseEntryFlag],[RevRecDeferredLine]=s.[RevRecDeferredLine],[RevRecDeferredRecognizedQty]=s.[RevRecDeferredRecognizedQty],[RevRecDeferredType]=s.[RevRecDeferredType],[RevRecDeferredTypeEnumID]=s.[RevRecDeferredTypeEnumID],[RevRecId]=s.[RevRecId],[RevRecLedgerPostingType]=s.[RevRecLedgerPostingType],[RevRecLedgerPostingTypeEnumID]=s.[RevRecLedgerPostingTypeEnumID],[RevRecNewValuesFromReallocation]=s.[RevRecNewValuesFromReallocation],[RevRecSalesId]=s.[RevRecSalesId],[SalesOrderId]=s.[SalesOrderId],[SettleVoucher]=s.[SettleVoucher],[SettleVoucherEnumID]=s.[SettleVoucherEnumID],[SkipBlockedForManualEntryCheck]=s.[SkipBlockedForManualEntryCheck],[SkipBlockedForManualEntryCheckFlag]=s.[SkipBlockedForManualEntryCheckFlag],[SubBillEscalationTableRecId]=s.[SubBillEscalationTableRecId],[SubBillRenewalLineRecId]=s.[SubBillRenewalLineRecId],[SubBillSchedLineRecId]=s.[SubBillSchedLineRecId],[Tax1099Amount]=s.[Tax1099Amount],[Tax1099Fields]=s.[Tax1099Fields],[Tax1099RecId]=s.[Tax1099RecId],[Tax1099State]=s.[Tax1099State],[Tax1099StateAmount]=s.[Tax1099StateAmount],[TaxBase_W]=s.[TaxBase_W],[TaxCode]=s.[TaxCode],[TaxDirectionControl]=s.[TaxDirectionControl],[TaxDirectionControlFlag]=s.[TaxDirectionControlFlag],[TaxGroup]=s.[TaxGroup],[TaxItemGroup]=s.[TaxItemGroup],[TaxPeriodPaymentCode_PL]=s.[TaxPeriodPaymentCode_PL],[TaxWithholdAlternateVendorAcct_TH]=s.[TaxWithholdAlternateVendorAcct_TH],[TaxWithholdCalculate_TH]=s.[TaxWithholdCalculate_TH],[TaxWithholdGroup]=s.[TaxWithholdGroup],[TaxWithholdItemGroupHeading_TH]=s.[TaxWithholdItemGroupHeading_TH],[TransactionType]=s.[TransactionType],[TransactionTypeEnumID]=s.[TransactionTypeEnumID],[TransDate]=s.[TransDate],[Transfer]=s.[Transfer],[TransferFlag]=s.[TransferFlag],[TransferCurrency_RU]=s.[TransferCurrency_RU],[Transferred]=s.[Transferred],[TransferredFlag]=s.[TransferredFlag],[TransferredBy]=s.[TransferredBy],[TransferredOn]=s.[TransferredOn],[TransferredTo]=s.[TransferredTo],[Triangulation]=s.[Triangulation],[Txt]=s.[Txt],[UseOriginalDocumentAsFacture_RU]=s.[UseOriginalDocumentAsFacture_RU],[VatDueDate_W]=s.[VatDueDate_W],[VATNumJournal]=s.[VATNumJournal],[VATOnPayment_RU]=s.[VATOnPayment_RU],[VATOperationCode_RU]=s.[VATOperationCode_RU],[VATPaymRefRecId_RU]=s.[VATPaymRefRecId_RU],[VATTaxAgentVendAccount_RU]=s.[VATTaxAgentVendAccount_RU],[VendBankAccount]=s.[VendBankAccount],[VendInvoiceDeclaration_IS]=s.[VendInvoiceDeclaration_IS],[VendorVATDate]=s.[VendorVATDate],[VendPaymFeeGroup_JP]=s.[VendPaymFeeGroup_JP],[VendTransId]=s.[VendTransId],[Voucher]=s.[Voucher],[Voucher_CN]=s.[Voucher_CN]
when not matched then insert(
	[AccountAgreementId_RU],[AccountType],[AccountTypeEnumID],[AcknowledgementDate],[Addressing_PL],[AgreementCompany_RU],[AmountCurCredit],[AmountCurDebit],[AnnouncementNum_RU],[Approved],[Approver],[AssetLeasePostingTypes],[AssetLeasePostingTypesEnumID],[AssetLeaseStatus],[Attachments_CN],[BankAccountId],[BankAgreementExt_RU],[BankBillOfExchangeNum],[BankCentralBankPurposeCode],[BankCentralBankPurposeText],[BankCentralBankTransTypeCur_RU],[BankChequeDepositTransRefRecID],[BankChequeNum],[BankClientDocumentTypeId_RU],[BankCommAccountId_RU],[BankCurrency],[BankCurrencyAmount],[BankCurrencyDealCourse_RU],[BankCurrencyTransferLog_RU],[BankDepositNum],[BankDepositVoucher],[BankNegInstRecipientName],[BankPaymentRegistrationNum_LV],[BankPrintAccountNum_RU],[BankPromissoryNoteNum],[BankReconcileAccountAtPost],[BankReconcileAccountAtPostFlag],[BankRemittanceFileId],[BankRemittanceType],[BankRemittanceTypeEnumID],[BankRespWorkerId_RU],[BankSpecAccountId_RU],[BankTransType],[BankVendAccountId_RU],[BudgetSourceLedgerEntryUnposted],[Cancel],[CashDiscAmount],[CashDiscBaseDate],[CashDiscBaseDays],[CashDiscCode],[CashDiscPercent],[CashReceiptNum_LV],[CFDIUUID_MX],[CommProfileType_RU],[CommProfileType_RUEnumID],[Company],[Correct_RU],[CorrectedInvoiceDate_RU],[CorrectedInvoiceId_RU],[CorrectionType_RU],[CorrectionType_RUEnumID],[CreditCardAuthTransRefId],[CurrencyCode],[CustBankAccount],[CustEinvoicePaymDeliveryNum],[CustEinvoicePaymSectionNum],[CustEinvoicePaymTransNum],[CustFactureAutoCreate_RU],[CustTransId],[CustVendAccount_PL],[CustVendBankAccountId],[CustVendName_PL],[CustVendNegInstProtestReason],[CustVendNegInstProtestReasonEnumID],[DataAreaId],[DataLakeModified_DateTime],[DateCashDisc],[DebitCurrencyCode_LT],[DefaultDimension],[DelayTaxCalculation],[DelayTaxCalculationFlag],[DirectDebitMandate],[DocumentDate],[DocumentNum],[Due],[ElectronicPaymentNumber],[EnterpriseNumber],[ErrorCodePayment],[EUSalesList],[ExchRate],[ExchRateSecond],[FBSpedEcfDerexClasificationCode_BR],[FileCreated],[ForeignCompany],[ForeignVoucher],[FreqCode],[FreqCodeEnumID],[FreqValue],[FurtherPostingRecId],[FurtherPostingType],[GSTHSTTaxType_CA],[GSTHSTTaxType_CAEnumID],[ImportDate],[InformByPhone_LT],[InformByTelex_LT],[IntBank_LV],[IntentLetterId_IT],[IntraComVATDueDate_W],[Invisible],[InvisibleFlag],[Invoice],[InvoiceReleaseDate],[INVOICERELEASEDATETZID],[InvoiceSeries_MX],[ITMCostArea],[ITMCostAreaEnumID],[ITMCostRefRecId],[ITMCostTypeId],[JournalNum],[LastTransferred],[LedgerDimension],[LedgerDimensionName],[LedgerJournalDlvDate_ES],[LedgerVoucherType_CN],[LineNum],[Listcode],[LoadingDate],[MarkedInvoice],[MarkedInvoiceCompany],[MarkedInvoiceRecId],[MarkupCode_RU],[MCRCCGeneralLedgerId],[MCRPaymOrderID],[MCRPrintTxtOnCheck],[MCRRefPaymID],[MODIFIEDDATETIME],[NegInstId],[NoEdit],[NoEditFlag],[OffSessionId_RU],[OffsetAccountAgreementId_RU],[OffsetAccountType],[OffsetAccountTypeEnumID],[OffsetAgreementCompany_RU],[OffsetCompany],[OffsetDefaultDimension],[OffsetLedgerDimension],[OffsetPostingProfile_RU],[OffsetTxt],[OperationType_MX],[OperationType_MXEnumID],[PARTITION],[Payment],[PaymentAccount],[PaymentNotes],[PaymentSequenceNum],[PaymentStatus],[PaymentStatusEnumID],[PaymId],[PaymInstruction1],[PaymInstruction2],[PaymInstruction3],[PaymInstruction4],[PaymMode],[PaymPurpose_LT],[PaymReference],[PaymSched],[PaymSpec],[PlafondDate_IT],[PoolRecId],[PostingProfile],[Prepayment],[PrepaymentFlag],[Price],[ProvisionalAssessment_IN],[PurchIdRange],[PurchLedgerPosting],[Qty],[RCashDocRepresPersonId],[RCashDocRepresType],[RCashDocRepresTypeEnumID],[RCashPayTransType],[RCashPayTransTypeEnumID],[ReasonRefRecID],[ReceiptDate_W],[RECID],[RECVERSION],[RefCopyReverse_CN],[ReleaseDate],[ReleaseDateComment],[RELEASEDATETZID],[RemainAmount],[RemittanceAddress],[RemittanceLocation],[RemitteeCurrency],[ReportingCurrencyExchRate],[ReportingCurrencyExchRateSecondary],[RepresPersonCard_W],[RepresPersonName_W],[ReverseDate],[ReverseEntry],[ReverseEntryFlag],[RevRecDeferredLine],[RevRecDeferredRecognizedQty],[RevRecDeferredType],[RevRecDeferredTypeEnumID],[RevRecId],[RevRecLedgerPostingType],[RevRecLedgerPostingTypeEnumID],[RevRecNewValuesFromReallocation],[RevRecSalesId],[SalesOrderId],[SettleVoucher],[SettleVoucherEnumID],[SkipBlockedForManualEntryCheck],[SkipBlockedForManualEntryCheckFlag],[SubBillEscalationTableRecId],[SubBillRenewalLineRecId],[SubBillSchedLineRecId],[Tax1099Amount],[Tax1099Fields],[Tax1099RecId],[Tax1099State],[Tax1099StateAmount],[TaxBase_W],[TaxCode],[TaxDirectionControl],[TaxDirectionControlFlag],[TaxGroup],[TaxItemGroup],[TaxPeriodPaymentCode_PL],[TaxWithholdAlternateVendorAcct_TH],[TaxWithholdCalculate_TH],[TaxWithholdGroup],[TaxWithholdItemGroupHeading_TH],[TransactionType],[TransactionTypeEnumID],[TransDate],[Transfer],[TransferFlag],[TransferCurrency_RU],[Transferred],[TransferredFlag],[TransferredBy],[TransferredOn],[TransferredTo],[Triangulation],[Txt],[UseOriginalDocumentAsFacture_RU],[VatDueDate_W],[VATNumJournal],[VATOnPayment_RU],[VATOperationCode_RU],[VATPaymRefRecId_RU],[VATTaxAgentVendAccount_RU],[VendBankAccount],[VendInvoiceDeclaration_IS],[VendorVATDate],[VendPaymFeeGroup_JP],[VendTransId],[Voucher],[Voucher_CN]
)
values (
[AccountAgreementId_RU],[AccountType],[AccountTypeEnumID],[AcknowledgementDate],[Addressing_PL],[AgreementCompany_RU],[AmountCurCredit],[AmountCurDebit],[AnnouncementNum_RU],[Approved],[Approver],[AssetLeasePostingTypes],[AssetLeasePostingTypesEnumID],[AssetLeaseStatus],[Attachments_CN],[BankAccountId],[BankAgreementExt_RU],[BankBillOfExchangeNum],[BankCentralBankPurposeCode],[BankCentralBankPurposeText],[BankCentralBankTransTypeCur_RU],[BankChequeDepositTransRefRecID],[BankChequeNum],[BankClientDocumentTypeId_RU],[BankCommAccountId_RU],[BankCurrency],[BankCurrencyAmount],[BankCurrencyDealCourse_RU],[BankCurrencyTransferLog_RU],[BankDepositNum],[BankDepositVoucher],[BankNegInstRecipientName],[BankPaymentRegistrationNum_LV],[BankPrintAccountNum_RU],[BankPromissoryNoteNum],[BankReconcileAccountAtPost],[BankReconcileAccountAtPostFlag],[BankRemittanceFileId],[BankRemittanceType],[BankRemittanceTypeEnumID],[BankRespWorkerId_RU],[BankSpecAccountId_RU],[BankTransType],[BankVendAccountId_RU],[BudgetSourceLedgerEntryUnposted],[Cancel],[CashDiscAmount],[CashDiscBaseDate],[CashDiscBaseDays],[CashDiscCode],[CashDiscPercent],[CashReceiptNum_LV],[CFDIUUID_MX],[CommProfileType_RU],[CommProfileType_RUEnumID],[Company],[Correct_RU],[CorrectedInvoiceDate_RU],[CorrectedInvoiceId_RU],[CorrectionType_RU],[CorrectionType_RUEnumID],[CreditCardAuthTransRefId],[CurrencyCode],[CustBankAccount],[CustEinvoicePaymDeliveryNum],[CustEinvoicePaymSectionNum],[CustEinvoicePaymTransNum],[CustFactureAutoCreate_RU],[CustTransId],[CustVendAccount_PL],[CustVendBankAccountId],[CustVendName_PL],[CustVendNegInstProtestReason],[CustVendNegInstProtestReasonEnumID],[DataAreaId],[DataLakeModified_DateTime],[DateCashDisc],[DebitCurrencyCode_LT],[DefaultDimension],[DelayTaxCalculation],[DelayTaxCalculationFlag],[DirectDebitMandate],[DocumentDate],[DocumentNum],[Due],[ElectronicPaymentNumber],[EnterpriseNumber],[ErrorCodePayment],[EUSalesList],[ExchRate],[ExchRateSecond],[FBSpedEcfDerexClasificationCode_BR],[FileCreated],[ForeignCompany],[ForeignVoucher],[FreqCode],[FreqCodeEnumID],[FreqValue],[FurtherPostingRecId],[FurtherPostingType],[GSTHSTTaxType_CA],[GSTHSTTaxType_CAEnumID],[ImportDate],[InformByPhone_LT],[InformByTelex_LT],[IntBank_LV],[IntentLetterId_IT],[IntraComVATDueDate_W],[Invisible],[InvisibleFlag],[Invoice],[InvoiceReleaseDate],[INVOICERELEASEDATETZID],[InvoiceSeries_MX],[ITMCostArea],[ITMCostAreaEnumID],[ITMCostRefRecId],[ITMCostTypeId],[JournalNum],[LastTransferred],[LedgerDimension],[LedgerDimensionName],[LedgerJournalDlvDate_ES],[LedgerVoucherType_CN],[LineNum],[Listcode],[LoadingDate],[MarkedInvoice],[MarkedInvoiceCompany],[MarkedInvoiceRecId],[MarkupCode_RU],[MCRCCGeneralLedgerId],[MCRPaymOrderID],[MCRPrintTxtOnCheck],[MCRRefPaymID],[MODIFIEDDATETIME],[NegInstId],[NoEdit],[NoEditFlag],[OffSessionId_RU],[OffsetAccountAgreementId_RU],[OffsetAccountType],[OffsetAccountTypeEnumID],[OffsetAgreementCompany_RU],[OffsetCompany],[OffsetDefaultDimension],[OffsetLedgerDimension],[OffsetPostingProfile_RU],[OffsetTxt],[OperationType_MX],[OperationType_MXEnumID],[PARTITION],[Payment],[PaymentAccount],[PaymentNotes],[PaymentSequenceNum],[PaymentStatus],[PaymentStatusEnumID],[PaymId],[PaymInstruction1],[PaymInstruction2],[PaymInstruction3],[PaymInstruction4],[PaymMode],[PaymPurpose_LT],[PaymReference],[PaymSched],[PaymSpec],[PlafondDate_IT],[PoolRecId],[PostingProfile],[Prepayment],[PrepaymentFlag],[Price],[ProvisionalAssessment_IN],[PurchIdRange],[PurchLedgerPosting],[Qty],[RCashDocRepresPersonId],[RCashDocRepresType],[RCashDocRepresTypeEnumID],[RCashPayTransType],[RCashPayTransTypeEnumID],[ReasonRefRecID],[ReceiptDate_W],[RECID],[RECVERSION],[RefCopyReverse_CN],[ReleaseDate],[ReleaseDateComment],[RELEASEDATETZID],[RemainAmount],[RemittanceAddress],[RemittanceLocation],[RemitteeCurrency],[ReportingCurrencyExchRate],[ReportingCurrencyExchRateSecondary],[RepresPersonCard_W],[RepresPersonName_W],[ReverseDate],[ReverseEntry],[ReverseEntryFlag],[RevRecDeferredLine],[RevRecDeferredRecognizedQty],[RevRecDeferredType],[RevRecDeferredTypeEnumID],[RevRecId],[RevRecLedgerPostingType],[RevRecLedgerPostingTypeEnumID],[RevRecNewValuesFromReallocation],[RevRecSalesId],[SalesOrderId],[SettleVoucher],[SettleVoucherEnumID],[SkipBlockedForManualEntryCheck],[SkipBlockedForManualEntryCheckFlag],[SubBillEscalationTableRecId],[SubBillRenewalLineRecId],[SubBillSchedLineRecId],[Tax1099Amount],[Tax1099Fields],[Tax1099RecId],[Tax1099State],[Tax1099StateAmount],[TaxBase_W],[TaxCode],[TaxDirectionControl],[TaxDirectionControlFlag],[TaxGroup],[TaxItemGroup],[TaxPeriodPaymentCode_PL],[TaxWithholdAlternateVendorAcct_TH],[TaxWithholdCalculate_TH],[TaxWithholdGroup],[TaxWithholdItemGroupHeading_TH],[TransactionType],[TransactionTypeEnumID],[TransDate],[Transfer],[TransferFlag],[TransferCurrency_RU],[Transferred],[TransferredFlag],[TransferredBy],[TransferredOn],[TransferredTo],[Triangulation],[Txt],[UseOriginalDocumentAsFacture_RU],[VatDueDate_W],[VATNumJournal],[VATOnPayment_RU],[VATOperationCode_RU],[VATPaymRefRecId_RU],[VATTaxAgentVendAccount_RU],[VendBankAccount],[VendInvoiceDeclaration_IS],[VendorVATDate],[VendPaymFeeGroup_JP],[VendTransId],[Voucher],[Voucher_CN]
);

end
GO