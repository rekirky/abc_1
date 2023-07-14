create   view [blobTransFull].[BankAccountTrans] as select 
LSN,[AccountId]
,[AccountingCurrencyAmountCorrect_RU]=cast([AccountingCurrencyAmountCorrect_RU] as numeric(18,2))
,[AccountStatement]
,[AccountStatementDate]=cast([AccountStatementDate] as date)
,[AcknowledgementDate]=cast([AcknowledgementDate] as date)
,[AmountCorrect]=cast([AmountCorrect] as numeric(18,2))
,[AmountCur]=cast([AmountCur] as numeric(18,2))
,[AmountMST]=cast([AmountMST] as numeric(18,2))
,[AmountReportingCurrency]=cast([AmountReportingCurrency] as numeric(18,2))
,[BankPaymentRegistrationNum_LV]
,[BankTransAmountCur]=cast([BankTransAmountCur] as numeric(18,2))
,[BankTransCurrencyCode]
,[BankTransType]
,[Cancel]=case when [Cancel]=1 then 'Yes' else 'No' end ,CancelFlag=cast([Cancel] as bit)
,[CancelPending]=case when [CancelPending]=1 then 'Yes' else 'No' end ,CancelPendingFlag=cast([CancelPending] as bit)
,[CentralBankPurposeCode_LV]
,[CentralBankPurposeText_LV]
,[ChequeNum]
,[ClearedDate]=cast([ClearedDate] as date)
,[CorrespondentCountry_LV]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[CurrencyCode]
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DefaultDimension]
,[DepositNum]
,[Included]=case when [Included]=1 then 'Yes' else 'No' end ,IncludedFlag=cast([Included] as bit)
,[LedgerDimension]
,[LedgerTransType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='LedgerTransType' and e.EnumCode=t.[LedgerTransType]) ,LedgerTransTypeEnumID=[LedgerTransType]
,[Manual]=case when [Manual]=1 then 'Yes' else 'No' end ,ManualFlag=cast([Manual] as bit)
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[PARTITION]
,[PaymentMode]
,[PaymReference]
,[ReasonRefRecID]
,[RECID]
,[Reconciled]=case when [Reconciled]=1 then 'Yes' else 'No' end ,ReconciledFlag=cast([Reconciled] as bit)
,[RECVERSION]
,[RefRecId_RU]
,[ReportingCurrencyAmount_RU]=cast([ReportingCurrencyAmount_RU] as numeric(18,2))
,[ReportingCurrencyAmountCorrect_RU]=cast([ReportingCurrencyAmountCorrect_RU] as numeric(18,2))
,[SourceRecId]
,[SourceTableId]
,[TaxGroup]
,[TaxItemGroup]
,[TransDate]=cast([TransDate] as date)
,[Txt]
,[Voucher]
 from blobFull.BankAccountTrans t
GO
