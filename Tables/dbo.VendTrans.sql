CREATE TABLE [dbo].[VendTrans]
(
[AccountingEvent] [bigint] NULL,
[AccountNum] [varchar] (20) NULL,
[AmountCur] [numeric] (18, 2) NULL,
[AmountMST] [numeric] (18, 2) NULL,
[Approved] [varchar] (51) NULL,
[ApprovedDate] [date] NULL,
[Approver] [bigint] NULL,
[Arrival] [varchar] (51) NULL,
[ArrivalAccountId] [varchar] (20) NULL,
[BankCentralBankPurposeCode] [varchar] (10) NULL,
[BankCentralBankPurposeText] [varchar] (210) NULL,
[BankLCImportLine] [bigint] NULL,
[BankRemittanceFileId] [varchar] (10) NULL,
[Cancel] [varchar] (51) NULL,
[CashDiscBaseDate] [date] NULL,
[CashDiscCode] [varchar] (10) NULL,
[Closed] [date] NULL,
[CompanyBankAccountId] [varchar] (10) NULL,
[Correct] [varchar] (51) NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[CREATEDTRANSACTIONID] [bigint] NULL,
[CurrencyCode] [varchar] (3) NULL,
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DefaultDimension] [varchar] (51) NULL,
[DocumentDate] [date] NULL,
[DocumentNum] [varchar] (20) NULL,
[DueDate] [date] NULL,
[EUROTriangulation] [varchar] (51) NULL,
[ExchAdjustment] [varchar] (51) NULL,
[ExchAdjustmentReporting] [varchar] (51) NULL,
[ExchRate] [varchar] (51) NULL,
[ExchRateSecond] [varchar] (51) NULL,
[FixedExchRate] [varchar] (51) NULL,
[Invoice] [varchar] (30) NULL,
[InvoiceProject] [varchar] (3) NULL,
[InvoiceProjectFlag] [bit] NULL,
[InvoiceReleaseDate] [varchar] (51) NULL,
[INVOICERELEASEDATETZID] [int] NULL,
[JournalNum] [varchar] (30) NULL,
[LastExchAdj] [date] NULL,
[LastExchAdjRate] [varchar] (51) NULL,
[LastExchAdjRateReporting] [numeric] (18, 2) NULL,
[LastExchAdjVoucher] [varchar] (30) NULL,
[LastSettleAccountNum] [varchar] (20) NULL,
[LastSettleCompany] [varchar] (4) NULL,
[LastSettleDate] [date] NULL,
[LastSettleVoucher] [varchar] (30) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [date] NULL,
[MODIFIEDTRANSACTIONID] [bigint] NULL,
[OffsetRecid] [bigint] NULL,
[OH_ConsWorkOrderId] [varchar] (30) NULL,
[PARTITION] [bigint] NULL,
[PaymId] [varchar] (200) NULL,
[PaymMode] [varchar] (10) NULL,
[PaymReference] [varchar] (35) NULL,
[PaymSpec] [varchar] (10) NULL,
[PaymTermId] [varchar] (100) NULL,
[PostingProfile] [varchar] (10) NULL,
[PostingProfileApprove] [varchar] (10) NULL,
[PostingProfileCancel] [varchar] (10) NULL,
[PostingProfileClose] [varchar] (10) NULL,
[PostingProfileReOpen] [varchar] (10) NULL,
[Prepayment] [varchar] (3) NULL,
[PrepaymentFlag] [bit] NULL,
[PromissoryNoteID] [varchar] (30) NULL,
[PromissoryNoteSeqNum] [int] NULL,
[PromissoryNoteStatus] [varchar] (51) NULL,
[PSNJournalizingDefinition] [bigint] NULL,
[PSNPurchasingCardType] [varchar] (256) NULL,
[PSNPurchasingCardTypeEnumID] [varchar] (51) NULL,
[RBOVendTrans] [varchar] (51) NULL,
[ReasonRefRecId] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ReleaseDateComment] [varchar] (60) NULL,
[RemittanceAddress] [bigint] NULL,
[RemittanceLocation] [bigint] NULL,
[ReportingCurrencyAmount] [numeric] (18, 2) NULL,
[ReportingCurrencyCrossRate] [numeric] (18, 2) NULL,
[ReportingCurrencyExchRate] [varchar] (51) NULL,
[ReportingCurrencyExchRateSecondary] [varchar] (51) NULL,
[ReportingExchAdjustmentRealized] [varchar] (51) NULL,
[ReportingExchAdjustmentUnrealized] [varchar] (51) NULL,
[SettleAmountCur] [numeric] (18, 2) NULL,
[SettleAmountMST] [numeric] (18, 2) NULL,
[SettleAmountReporting] [numeric] (18, 2) NULL,
[Settlement] [varchar] (51) NULL,
[SettleTax1099Amount] [varchar] (51) NULL,
[SettleTax1099StateAmount] [varchar] (51) NULL,
[SummaryAccountId] [varchar] (20) NULL,
[Tax1099Amount] [numeric] (18, 2) NULL,
[Tax1099Date] [date] NULL,
[Tax1099Fields] [bigint] NULL,
[Tax1099Num] [varchar] (30) NULL,
[Tax1099RecId] [bigint] NULL,
[Tax1099State] [varchar] (10) NULL,
[Tax1099StateAmount] [numeric] (18, 2) NULL,
[TaxInvoicePurchId] [varchar] (30) NULL,
[ThirdPartyBankAccountId] [varchar] (10) NULL,
[TransDate] [date] NULL,
[TransType] [varchar] (256) NULL,
[TransTypeEnumID] [varchar] (51) NULL,
[Txt] [varchar] (512) NULL,
[VendExchAdjustmentRealized] [varchar] (51) NULL,
[VendExchAdjustmentUnrealized] [varchar] (51) NULL,
[VendorVATDate] [date] NULL,
[VendPaymentGroup] [varchar] (10) NULL,
[Voucher] [varchar] (30) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VendTrans] ADD CONSTRAINT [PK_VendTrans_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
