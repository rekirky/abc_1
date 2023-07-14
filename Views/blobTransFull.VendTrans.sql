create   view [blobTransFull].[VendTrans] as select 
LSN,[AccountingEvent]
,[AccountNum]
,[AmountCur]=cast([AmountCur] as numeric(18,2))
,[AmountMST]=cast([AmountMST] as numeric(18,2))
,[Approved]
,[ApprovedDate]=cast([ApprovedDate] as date)
,[Approver]
,[Arrival]
,[ArrivalAccountId]
,[BankCentralBankPurposeCode]
,[BankCentralBankPurposeText]
,[BankLCImportLine]
,[BankRemittanceFileId]
,[Cancel]
,[CashDiscBaseDate]=cast([CashDiscBaseDate] as date)
,[CashDiscCode]
,[Closed]=cast([Closed] as date)
,[CompanyBankAccountId]
,[Correct]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[CREATEDTRANSACTIONID]
,[CurrencyCode]
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DefaultDimension]
,[DocumentDate]=cast([DocumentDate] as date)
,[DocumentNum]
,[DueDate]=cast([DueDate] as date)
,[EUROTriangulation]
,[ExchAdjustment]
,[ExchAdjustmentReporting]
,[ExchRate]
,[ExchRateSecond]
,[FixedExchRate]
,[Invoice]
,[InvoiceProject]=case when [InvoiceProject]=1 then 'Yes' else 'No' end ,InvoiceProjectFlag=cast([InvoiceProject] as bit)
,[InvoiceReleaseDate]
,[INVOICERELEASEDATETZID]
,[JournalNum]
,[LastExchAdj]=cast([LastExchAdj] as date)
,[LastExchAdjRate]
,[LastExchAdjRateReporting]=cast([LastExchAdjRateReporting] as numeric(18,2))
,[LastExchAdjVoucher]
,[LastSettleAccountNum]
,[LastSettleCompany]
,[LastSettleDate]=cast(case when [LastSettleDate] < cast('1901-01-01' as date) then null else [LastSettleDate] end as date)
,[LastSettleVoucher]
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[MODIFIEDTRANSACTIONID]
,[OffsetRecid]
,[OH_ConsWorkOrderId]
,[PARTITION]
,[PaymId]
,[PaymMode]
,[PaymReference]
,[PaymSpec]
,[PaymTermId]
,[PostingProfile]
,[PostingProfileApprove]
,[PostingProfileCancel]
,[PostingProfileClose]
,[PostingProfileReOpen]
,[Prepayment]=case when [Prepayment]=1 then 'Yes' else 'No' end ,PrepaymentFlag=cast([Prepayment] as bit)
,[PromissoryNoteID]
,[PromissoryNoteSeqNum]
,[PromissoryNoteStatus]
,[PSNJournalizingDefinition]
,[PSNPurchasingCardType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='PSNPurchasingCardTransactionType' and e.EnumCode=t.[PSNPurchasingCardType]) ,PSNPurchasingCardTypeEnumID=[PSNPurchasingCardType]
,[RBOVendTrans]
,[ReasonRefRecId]
,[RECID]
,[RECVERSION]
,[ReleaseDateComment]
,[RemittanceAddress]
,[RemittanceLocation]
,[ReportingCurrencyAmount]=cast([ReportingCurrencyAmount] as numeric(18,2))
,[ReportingCurrencyCrossRate]=cast([ReportingCurrencyCrossRate] as numeric(18,2))
,[ReportingCurrencyExchRate]
,[ReportingCurrencyExchRateSecondary]
,[ReportingExchAdjustmentRealized]
,[ReportingExchAdjustmentUnrealized]
,[SettleAmountCur]=cast([SettleAmountCur] as numeric(18,2))
,[SettleAmountMST]=cast([SettleAmountMST] as numeric(18,2))
,[SettleAmountReporting]=cast([SettleAmountReporting] as numeric(18,2))
,[Settlement]
,[SettleTax1099Amount]
,[SettleTax1099StateAmount]
,[SummaryAccountId]
,[Tax1099Amount]=cast([Tax1099Amount] as numeric(18,2))
,[Tax1099Date]=cast([Tax1099Date] as date)
,[Tax1099Fields]
,[Tax1099Num]
,[Tax1099RecId]
,[Tax1099State]
,[Tax1099StateAmount]=cast([Tax1099StateAmount] as numeric(18,2))
,[TaxInvoicePurchId]
,[ThirdPartyBankAccountId]
,[TransDate]=cast([TransDate] as date)
,[TransType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='LedgerTransType' and e.EnumCode=t.[TransType]) ,TransTypeEnumID=[TransType]
,[Txt]
,[VendExchAdjustmentRealized]
,[VendExchAdjustmentUnrealized]
,[VendorVATDate]=cast([VendorVATDate] as date)
,[VendPaymentGroup]
,[Voucher]
 from blobFull.VendTrans t
GO
