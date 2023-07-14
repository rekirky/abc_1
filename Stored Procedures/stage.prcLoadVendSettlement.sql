create   proc [stage].[prcLoadVendSettlement] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.VendSettlement t 
where exists 
	(select 1 from stage.VendSettlement s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.VendSettlement with(tablock) as t
using (select * from blobTransInc.VendSettlement where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[AccountNum]=s.[AccountNum],[CanBeReversed]=s.[CanBeReversed],[CashDiscountLedgerDimension]=s.[CashDiscountLedgerDimension],[ClosedDate]=s.[ClosedDate],[CREATEDBY]=s.[CREATEDBY],[CREATEDDATETIME]=s.[CREATEDDATETIME],[DataAreaId]=s.[DataAreaId],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DefaultDimension]=s.[DefaultDimension],[DueDate]=s.[DueDate],[EUSalesList]=s.[EUSalesList],[ExchAdjustment]=s.[ExchAdjustment],[ExchAdjustmentReporting]=s.[ExchAdjustmentReporting],[FineAmount_BR]=s.[FineAmount_BR],[FineCode_BR]=s.[FineCode_BR],[InterestAmount_BR]=s.[InterestAmount_BR],[InterestCode_BR]=s.[InterestCode_BR],[LastInterestDateDummy]=s.[LastInterestDateDummy],[OffsetAccountNum]=s.[OffsetAccountNum],[OffsetCompany]=s.[OffsetCompany],[OffsetRecid]=s.[OffsetRecid],[OffsetTransVoucher]=s.[OffsetTransVoucher],[PARTITION]=s.[PARTITION],[PennyDiff]=s.[PennyDiff],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[RemittanceAddress]=s.[RemittanceAddress],[ReportingDate_RU]=s.[ReportingDate_RU],[ReversedRecId_RU]=s.[ReversedRecId_RU],[ReverseTrans_RU]=s.[ReverseTrans_RU],[SettleAmountCur]=s.[SettleAmountCur],[SettleAmountMST]=s.[SettleAmountMST],[SettleAmountReporting]=s.[SettleAmountReporting],[SettlementGroup]=s.[SettlementGroup],[SettlementVoucher]=s.[SettlementVoucher],[SettleTax1099Amount]=s.[SettleTax1099Amount],[SettleTax1099StateAmount]=s.[SettleTax1099StateAmount],[StatusVoucher]=s.[StatusVoucher],[TaxVoucher_RU]=s.[TaxVoucher_RU],[ThirdPartyBankAccountId]=s.[ThirdPartyBankAccountId],[TransCompany]=s.[TransCompany],[TransDate]=s.[TransDate],[TransOpen]=s.[TransOpen],[TransRecId]=s.[TransRecId],[TransType]=s.[TransType],[TransTypeEnumID]=s.[TransTypeEnumID],[UtilizedCashDisc]=s.[UtilizedCashDisc],[VATTaxAgentAmount_RU]=s.[VATTaxAgentAmount_RU],[VendCashDiscDate]=s.[VendCashDiscDate],[VendPaymentGroup]=s.[VendPaymentGroup]
when not matched then insert(
	[AccountNum],[CanBeReversed],[CashDiscountLedgerDimension],[ClosedDate],[CREATEDBY],[CREATEDDATETIME],[DataAreaId],[DataLakeModified_DateTime],[DefaultDimension],[DueDate],[EUSalesList],[ExchAdjustment],[ExchAdjustmentReporting],[FineAmount_BR],[FineCode_BR],[InterestAmount_BR],[InterestCode_BR],[LastInterestDateDummy],[OffsetAccountNum],[OffsetCompany],[OffsetRecid],[OffsetTransVoucher],[PARTITION],[PennyDiff],[RECID],[RECVERSION],[RemittanceAddress],[ReportingDate_RU],[ReversedRecId_RU],[ReverseTrans_RU],[SettleAmountCur],[SettleAmountMST],[SettleAmountReporting],[SettlementGroup],[SettlementVoucher],[SettleTax1099Amount],[SettleTax1099StateAmount],[StatusVoucher],[TaxVoucher_RU],[ThirdPartyBankAccountId],[TransCompany],[TransDate],[TransOpen],[TransRecId],[TransType],[TransTypeEnumID],[UtilizedCashDisc],[VATTaxAgentAmount_RU],[VendCashDiscDate],[VendPaymentGroup]
)
values (
[AccountNum],[CanBeReversed],[CashDiscountLedgerDimension],[ClosedDate],[CREATEDBY],[CREATEDDATETIME],[DataAreaId],[DataLakeModified_DateTime],[DefaultDimension],[DueDate],[EUSalesList],[ExchAdjustment],[ExchAdjustmentReporting],[FineAmount_BR],[FineCode_BR],[InterestAmount_BR],[InterestCode_BR],[LastInterestDateDummy],[OffsetAccountNum],[OffsetCompany],[OffsetRecid],[OffsetTransVoucher],[PARTITION],[PennyDiff],[RECID],[RECVERSION],[RemittanceAddress],[ReportingDate_RU],[ReversedRecId_RU],[ReverseTrans_RU],[SettleAmountCur],[SettleAmountMST],[SettleAmountReporting],[SettlementGroup],[SettlementVoucher],[SettleTax1099Amount],[SettleTax1099StateAmount],[StatusVoucher],[TaxVoucher_RU],[ThirdPartyBankAccountId],[TransCompany],[TransDate],[TransOpen],[TransRecId],[TransType],[TransTypeEnumID],[UtilizedCashDisc],[VATTaxAgentAmount_RU],[VendCashDiscDate],[VendPaymentGroup]
);

end
GO
