create   proc [stage].[prcLoadBankAccountTrans] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.BankAccountTrans t 
where exists 
	(select 1 from stage.BankAccountTrans s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.BankAccountTrans with(tablock) as t
using (select * from blobTransInc.BankAccountTrans where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[AccountId]=s.[AccountId],[AccountingCurrencyAmountCorrect_RU]=s.[AccountingCurrencyAmountCorrect_RU],[AccountStatement]=s.[AccountStatement],[AccountStatementDate]=s.[AccountStatementDate],[AcknowledgementDate]=s.[AcknowledgementDate],[AmountCorrect]=s.[AmountCorrect],[AmountCur]=s.[AmountCur],[AmountMST]=s.[AmountMST],[AmountReportingCurrency]=s.[AmountReportingCurrency],[BankPaymentRegistrationNum_LV]=s.[BankPaymentRegistrationNum_LV],[BankTransAmountCur]=s.[BankTransAmountCur],[BankTransCurrencyCode]=s.[BankTransCurrencyCode],[BankTransType]=s.[BankTransType],[Cancel]=s.[Cancel],[CancelFlag]=s.[CancelFlag],[CancelPending]=s.[CancelPending],[CancelPendingFlag]=s.[CancelPendingFlag],[CentralBankPurposeCode_LV]=s.[CentralBankPurposeCode_LV],[CentralBankPurposeText_LV]=s.[CentralBankPurposeText_LV],[ChequeNum]=s.[ChequeNum],[ClearedDate]=s.[ClearedDate],[CorrespondentCountry_LV]=s.[CorrespondentCountry_LV],[CREATEDBY]=s.[CREATEDBY],[CREATEDDATETIME]=s.[CREATEDDATETIME],[CurrencyCode]=s.[CurrencyCode],[DataAreaId]=s.[DataAreaId],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DefaultDimension]=s.[DefaultDimension],[DepositNum]=s.[DepositNum],[Included]=s.[Included],[IncludedFlag]=s.[IncludedFlag],[LedgerDimension]=s.[LedgerDimension],[LedgerTransType]=s.[LedgerTransType],[LedgerTransTypeEnumID]=s.[LedgerTransTypeEnumID],[Manual]=s.[Manual],[ManualFlag]=s.[ManualFlag],[MODIFIEDBY]=s.[MODIFIEDBY],[MODIFIEDDATETIME]=s.[MODIFIEDDATETIME],[PARTITION]=s.[PARTITION],[PaymentMode]=s.[PaymentMode],[PaymReference]=s.[PaymReference],[ReasonRefRecID]=s.[ReasonRefRecID],[RECID]=s.[RECID],[Reconciled]=s.[Reconciled],[ReconciledFlag]=s.[ReconciledFlag],[RECVERSION]=s.[RECVERSION],[RefRecId_RU]=s.[RefRecId_RU],[ReportingCurrencyAmount_RU]=s.[ReportingCurrencyAmount_RU],[ReportingCurrencyAmountCorrect_RU]=s.[ReportingCurrencyAmountCorrect_RU],[SourceRecId]=s.[SourceRecId],[SourceTableId]=s.[SourceTableId],[TaxGroup]=s.[TaxGroup],[TaxItemGroup]=s.[TaxItemGroup],[TransDate]=s.[TransDate],[Txt]=s.[Txt],[Voucher]=s.[Voucher]
when not matched then insert(
	[AccountId],[AccountingCurrencyAmountCorrect_RU],[AccountStatement],[AccountStatementDate],[AcknowledgementDate],[AmountCorrect],[AmountCur],[AmountMST],[AmountReportingCurrency],[BankPaymentRegistrationNum_LV],[BankTransAmountCur],[BankTransCurrencyCode],[BankTransType],[Cancel],[CancelFlag],[CancelPending],[CancelPendingFlag],[CentralBankPurposeCode_LV],[CentralBankPurposeText_LV],[ChequeNum],[ClearedDate],[CorrespondentCountry_LV],[CREATEDBY],[CREATEDDATETIME],[CurrencyCode],[DataAreaId],[DataLakeModified_DateTime],[DefaultDimension],[DepositNum],[Included],[IncludedFlag],[LedgerDimension],[LedgerTransType],[LedgerTransTypeEnumID],[Manual],[ManualFlag],[MODIFIEDBY],[MODIFIEDDATETIME],[PARTITION],[PaymentMode],[PaymReference],[ReasonRefRecID],[RECID],[Reconciled],[ReconciledFlag],[RECVERSION],[RefRecId_RU],[ReportingCurrencyAmount_RU],[ReportingCurrencyAmountCorrect_RU],[SourceRecId],[SourceTableId],[TaxGroup],[TaxItemGroup],[TransDate],[Txt],[Voucher]
)
values (
[AccountId],[AccountingCurrencyAmountCorrect_RU],[AccountStatement],[AccountStatementDate],[AcknowledgementDate],[AmountCorrect],[AmountCur],[AmountMST],[AmountReportingCurrency],[BankPaymentRegistrationNum_LV],[BankTransAmountCur],[BankTransCurrencyCode],[BankTransType],[Cancel],[CancelFlag],[CancelPending],[CancelPendingFlag],[CentralBankPurposeCode_LV],[CentralBankPurposeText_LV],[ChequeNum],[ClearedDate],[CorrespondentCountry_LV],[CREATEDBY],[CREATEDDATETIME],[CurrencyCode],[DataAreaId],[DataLakeModified_DateTime],[DefaultDimension],[DepositNum],[Included],[IncludedFlag],[LedgerDimension],[LedgerTransType],[LedgerTransTypeEnumID],[Manual],[ManualFlag],[MODIFIEDBY],[MODIFIEDDATETIME],[PARTITION],[PaymentMode],[PaymReference],[ReasonRefRecID],[RECID],[Reconciled],[ReconciledFlag],[RECVERSION],[RefRecId_RU],[ReportingCurrencyAmount_RU],[ReportingCurrencyAmountCorrect_RU],[SourceRecId],[SourceTableId],[TaxGroup],[TaxItemGroup],[TransDate],[Txt],[Voucher]
);

end
GO
