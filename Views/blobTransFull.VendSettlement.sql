create   view [blobTransFull].[VendSettlement] as select 
LSN,[AccountNum]
,[CanBeReversed]
,[CashDiscountLedgerDimension]
,[ClosedDate]=cast([ClosedDate] as date)
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DefaultDimension]
,[DueDate]=cast([DueDate] as date)
,[EUSalesList]
,[ExchAdjustment]
,[ExchAdjustmentReporting]
,[FineAmount_BR]=cast([FineAmount_BR] as numeric(18,2))
,[FineCode_BR]
,[InterestAmount_BR]=cast([InterestAmount_BR] as numeric(18,2))
,[InterestCode_BR]
,[LastInterestDateDummy]=cast([LastInterestDateDummy] as date)
,[OffsetAccountNum]
,[OffsetCompany]
,[OffsetRecid]
,[OffsetTransVoucher]
,[PARTITION]
,[PennyDiff]=cast([PennyDiff] as numeric(18,2))
,[RECID]
,[RECVERSION]
,[RemittanceAddress]
,[ReportingDate_RU]=cast([ReportingDate_RU] as date)
,[ReversedRecId_RU]
,[ReverseTrans_RU]
,[SettleAmountCur]=cast([SettleAmountCur] as numeric(18,2))
,[SettleAmountMST]=cast([SettleAmountMST] as numeric(18,2))
,[SettleAmountReporting]=cast([SettleAmountReporting] as numeric(18,2))
,[SettlementGroup]
,[SettlementVoucher]
,[SettleTax1099Amount]
,[SettleTax1099StateAmount]
,[StatusVoucher]
,[TaxVoucher_RU]
,[ThirdPartyBankAccountId]
,[TransCompany]
,[TransDate]=cast([TransDate] as date)
,[TransOpen]
,[TransRecId]
,[TransType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='LedgerTransType' and e.EnumCode=t.[TransType]) ,TransTypeEnumID=[TransType]
,[UtilizedCashDisc]=cast([UtilizedCashDisc] as numeric(18,2))
,[VATTaxAgentAmount_RU]=cast([VATTaxAgentAmount_RU] as numeric(18,2))
,[VendCashDiscDate]=cast([VendCashDiscDate] as date)
,[VendPaymentGroup]
 from blobFull.VendSettlement t
GO
