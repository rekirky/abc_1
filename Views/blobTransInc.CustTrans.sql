create   view [blobTransInc].[CustTrans] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[AccountingEvent]
,[AccountNum]
,[AmountCur]=cast([AmountCur] as numeric(18,2))
,[AmountMST]=cast([AmountMST] as numeric(18,2))
,[Approved]
,[Approver]
,[BankCentralBankPurposeCode]
,[BankCentralBankPurposeText]
,[BankLCExportLine]
,[BankRemittanceFileId]
,[BillOfExchangeID]
,[BillOfExchangeSeqNum]
,[BillOfExchangeStatus]
,[CancelledPayment]
,[CashDiscBaseDate]=cast([CashDiscBaseDate] as date)
,[CashDiscCode]
,[CashPayment]=case when [CashPayment]=1 then 'Yes' else 'No' end ,CashPaymentFlag=cast([CashPayment] as bit)
,[Closed]=cast([Closed] as date)
,[CollectionLetter]=case when [CollectionLetter]=1 then 'Yes' else 'No' end ,CollectionLetterFlag=cast([CollectionLetter] as bit)
,[CollectionLetterCode]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='CustCollectionLetterCode' and e.EnumCode=t.[CollectionLetterCode]) ,CollectionLetterCodeEnumID=[CollectionLetterCode]
,[CompanyBankAccountId]
,[ControlNum]
,[Correct]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[CREATEDTRANSACTIONID]
,[CredManExcludeFromCreditControl]
,[CurrencyCode]
,[CustAutomationExclude]=case when [CustAutomationExclude]=1 then 'Yes' else 'No' end ,CustAutomationExcludeFlag=cast([CustAutomationExclude] as bit)
,[CustAutomationPredictionSent]=case when [CustAutomationPredictionSent]=1 then 'Yes' else 'No' end ,CustAutomationPredictionSentFlag=cast([CustAutomationPredictionSent] as bit)
,[CustAutomationPredunningSent]=case when [CustAutomationPredunningSent]=1 then 'Yes' else 'No' end ,CustAutomationPredunningSentFlag=cast([CustAutomationPredunningSent] as bit)
,[CustBillingClassification]
,[CustExchAdjustmentRealized]
,[CustExchAdjustmentUnrealized]
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DefaultDimension]
,[DeliveryMode]
,[DirectDebitMandate]
,[DocumentDate]=cast([DocumentDate] as date)
,[DocumentNum]
,[DueDate]=cast([DueDate] as date)
,[EUROTriangulation]
,[ExchAdjustment]
,[ExchAdjustmentReporting]
,[ExchRate]
,[ExchRateSecond]
,[FixedExchRate]
,[Interest]
,[Invoice]
,[INVOICEPROJECT]
,[InvoiceType_IT]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='InvoiceType_IT' and e.EnumCode=t.[InvoiceType_IT]) ,InvoiceType_ITEnumID=[InvoiceType_IT]
,[LastExchAdj]=cast([LastExchAdj] as date)
,[LastExchAdjRate]
,[LastExchAdjRateReporting]=cast([LastExchAdjRateReporting] as numeric(18,2))
,[LastExchAdjVoucher]
,[LastSettleAccountNum]
,[LastSettleCompany]
,[LastSettleDate]=cast([LastSettleDate] as date)
,[LastSettleVoucher]
,[MCRPaymOrderID]
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[MODIFIEDTRANSACTIONID]
,[OffsetRecid]
,[OrderAccount]
,[PARTITION]
,[PaymId]
,[PaymMethod]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='NetCurrent' and e.EnumCode=t.[PaymMethod]) ,PaymMethodEnumID=[PaymMethod]
,[PaymMode]
,[PaymReference]
,[PaymSchedId]
,[PaymSpec]
,[PaymTermId]
,[PostingProfile]
,[PostingProfileClose]
,[Prepayment]=case when [Prepayment]=1 then 'Yes' else 'No' end ,PrepaymentFlag=cast([Prepayment] as bit)
,[ReasonRefRecId]
,[RECID]
,[RECVERSION]
,[ReportingCurrencyAmount]=cast([ReportingCurrencyAmount] as numeric(18,2))
,[ReportingCurrencyCrossRate]=cast([ReportingCurrencyCrossRate] as numeric(18,2))
,[ReportingCurrencyExchRate]
,[ReportingCurrencyExchRateSecondary]
,[ReportingExchAdjustmentRealized]
,[ReportingExchAdjustmentUnrealized]
,[RetailCustTrans]
,[RetailStoreId]
,[RetailTerminalId]
,[RetailTransactionId]
,[SettleAmount_MX]=cast([SettleAmount_MX] as numeric(18,2))
,[SettleAmountCur]=cast([SettleAmountCur] as numeric(18,2))
,[SettleAmountMST]=cast([SettleAmountMST] as numeric(18,2))
,[SettleAmountReporting]=cast([SettleAmountReporting] as numeric(18,2))
,[Settlement]
,[TaxInvoiceSalesId]
,[ThirdPartyBankAccountId]
,[TransDate]=cast([TransDate] as date)
,[TransType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='LedgerTransType' and e.EnumCode=t.[TransType]) ,TransTypeEnumID=[TransType]
,[Txt]
,[Voucher]
 from stage.CustTrans t
GO
