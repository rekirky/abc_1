CREATE TABLE [dbo].[CustTrans]
(
[AccountingEvent] [bigint] NULL,
[AccountNum] [varchar] (20) NULL,
[AmountCur] [numeric] (18, 2) NULL,
[AmountMST] [numeric] (18, 2) NULL,
[Approved] [varchar] (51) NULL,
[Approver] [bigint] NULL,
[BankCentralBankPurposeCode] [varchar] (10) NULL,
[BankCentralBankPurposeText] [varchar] (210) NULL,
[BankLCExportLine] [bigint] NULL,
[BankRemittanceFileId] [varchar] (10) NULL,
[BillOfExchangeID] [varchar] (30) NULL,
[BillOfExchangeSeqNum] [int] NULL,
[BillOfExchangeStatus] [varchar] (51) NULL,
[CancelledPayment] [varchar] (51) NULL,
[CashDiscBaseDate] [date] NULL,
[CashDiscCode] [varchar] (10) NULL,
[CashPayment] [varchar] (3) NULL,
[CashPaymentFlag] [bit] NULL,
[Closed] [date] NULL,
[CollectionLetter] [varchar] (3) NULL,
[CollectionLetterFlag] [bit] NULL,
[CollectionLetterCode] [varchar] (256) NULL,
[CollectionLetterCodeEnumID] [varchar] (51) NULL,
[CompanyBankAccountId] [varchar] (10) NULL,
[ControlNum] [varchar] (30) NULL,
[Correct] [varchar] (51) NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[CREATEDTRANSACTIONID] [bigint] NULL,
[CredManExcludeFromCreditControl] [varchar] (51) NULL,
[CurrencyCode] [varchar] (3) NULL,
[CustAutomationExclude] [varchar] (3) NULL,
[CustAutomationExcludeFlag] [bit] NULL,
[CustAutomationPredictionSent] [varchar] (3) NULL,
[CustAutomationPredictionSentFlag] [bit] NULL,
[CustAutomationPredunningSent] [varchar] (3) NULL,
[CustAutomationPredunningSentFlag] [bit] NULL,
[CustBillingClassification] [bigint] NULL,
[CustExchAdjustmentRealized] [varchar] (51) NULL,
[CustExchAdjustmentUnrealized] [varchar] (51) NULL,
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DefaultDimension] [varchar] (51) NULL,
[DeliveryMode] [varchar] (10) NULL,
[DirectDebitMandate] [bigint] NULL,
[DocumentDate] [date] NULL,
[DocumentNum] [varchar] (20) NULL,
[DueDate] [date] NULL,
[EUROTriangulation] [varchar] (51) NULL,
[ExchAdjustment] [varchar] (51) NULL,
[ExchAdjustmentReporting] [varchar] (51) NULL,
[ExchRate] [varchar] (51) NULL,
[ExchRateSecond] [varchar] (51) NULL,
[FixedExchRate] [varchar] (51) NULL,
[Interest] [varchar] (51) NULL,
[Invoice] [varchar] (30) NULL,
[INVOICEPROJECT] [int] NULL,
[InvoiceType_IT] [varchar] (256) NULL,
[InvoiceType_ITEnumID] [varchar] (51) NULL,
[LastExchAdj] [date] NULL,
[LastExchAdjRate] [varchar] (51) NULL,
[LastExchAdjRateReporting] [numeric] (18, 2) NULL,
[LastExchAdjVoucher] [varchar] (30) NULL,
[LastSettleAccountNum] [varchar] (20) NULL,
[LastSettleCompany] [varchar] (4) NULL,
[LastSettleDate] [date] NULL,
[LastSettleVoucher] [varchar] (30) NULL,
[MCRPaymOrderID] [varchar] (30) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [date] NULL,
[MODIFIEDTRANSACTIONID] [bigint] NULL,
[OffsetRecid] [bigint] NULL,
[OrderAccount] [varchar] (20) NULL,
[PARTITION] [bigint] NULL,
[PaymId] [varchar] (200) NULL,
[PaymMethod] [varchar] (256) NULL,
[PaymMethodEnumID] [varchar] (51) NULL,
[PaymMode] [varchar] (10) NULL,
[PaymReference] [varchar] (35) NULL,
[PaymSchedId] [varchar] (30) NULL,
[PaymSpec] [varchar] (10) NULL,
[PaymTermId] [varchar] (100) NULL,
[PostingProfile] [varchar] (10) NULL,
[PostingProfileClose] [varchar] (10) NULL,
[Prepayment] [varchar] (3) NULL,
[PrepaymentFlag] [bit] NULL,
[ReasonRefRecId] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ReportingCurrencyAmount] [numeric] (18, 2) NULL,
[ReportingCurrencyCrossRate] [numeric] (18, 2) NULL,
[ReportingCurrencyExchRate] [varchar] (51) NULL,
[ReportingCurrencyExchRateSecondary] [varchar] (51) NULL,
[ReportingExchAdjustmentRealized] [varchar] (51) NULL,
[ReportingExchAdjustmentUnrealized] [varchar] (51) NULL,
[RetailCustTrans] [varchar] (51) NULL,
[RetailStoreId] [varchar] (10) NULL,
[RetailTerminalId] [varchar] (10) NULL,
[RetailTransactionId] [varchar] (44) NULL,
[SettleAmount_MX] [numeric] (18, 2) NULL,
[SettleAmountCur] [numeric] (18, 2) NULL,
[SettleAmountMST] [numeric] (18, 2) NULL,
[SettleAmountReporting] [numeric] (18, 2) NULL,
[Settlement] [varchar] (51) NULL,
[TaxInvoiceSalesId] [varchar] (30) NULL,
[ThirdPartyBankAccountId] [varchar] (10) NULL,
[TransDate] [date] NULL,
[TransType] [varchar] (256) NULL,
[TransTypeEnumID] [varchar] (51) NULL,
[Txt] [varchar] (512) NULL,
[Voucher] [varchar] (30) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustTrans] ADD CONSTRAINT [PK_CustTrans_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
