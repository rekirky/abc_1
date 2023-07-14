CREATE EXTERNAL TABLE [blobFull].[VendTrans]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[PostingProfile] [varchar] (10) NULL,
[AccountingEvent] [bigint] NULL,
[AccountNum] [varchar] (20) NULL,
[AmountCur] [float] NULL,
[AmountMST] [float] NULL,
[Approved] [varchar] (51) NULL,
[ApprovedDate] [varchar] (40) NULL,
[Approver] [bigint] NULL,
[Arrival] [varchar] (51) NULL,
[BankCentralBankPurposeCode] [varchar] (10) NULL,
[BankCentralBankPurposeText] [varchar] (210) NULL,
[BankLCImportLine] [bigint] NULL,
[BankRemittanceFileId] [varchar] (10) NULL,
[Cancel] [varchar] (51) NULL,
[CashDiscBaseDate] [varchar] (40) NULL,
[CashDiscCode] [varchar] (10) NULL,
[Closed] [varchar] (40) NULL,
[CompanyBankAccountId] [varchar] (10) NULL,
[Correct] [varchar] (51) NULL,
[CurrencyCode] [varchar] (3) NULL,
[DefaultDimension] [varchar] (51) NULL,
[DocumentDate] [varchar] (40) NULL,
[DocumentNum] [varchar] (20) NULL,
[DueDate] [varchar] (40) NULL,
[EUROTriangulation] [varchar] (51) NULL,
[ExchAdjustment] [varchar] (51) NULL,
[ExchAdjustmentReporting] [varchar] (51) NULL,
[ExchRate] [varchar] (51) NULL,
[ExchRateSecond] [varchar] (51) NULL,
[FixedExchRate] [varchar] (51) NULL,
[Invoice] [varchar] (30) NULL,
[InvoiceProject] [varchar] (51) NULL,
[InvoiceReleaseDate] [varchar] (51) NULL,
[INVOICERELEASEDATETZID] [int] NULL,
[JournalNum] [varchar] (30) NULL,
[LastExchAdj] [varchar] (40) NULL,
[LastExchAdjRate] [varchar] (51) NULL,
[LastExchAdjRateReporting] [float] NULL,
[LastExchAdjVoucher] [varchar] (30) NULL,
[LastSettleAccountNum] [varchar] (20) NULL,
[LastSettleCompany] [varchar] (4) NULL,
[LastSettleDate] [varchar] (40) NULL,
[LastSettleVoucher] [varchar] (30) NULL,
[OffsetRecid] [bigint] NULL,
[PaymId] [varchar] (200) NULL,
[PaymMode] [varchar] (10) NULL,
[PaymReference] [varchar] (35) NULL,
[PaymSpec] [varchar] (10) NULL,
[PaymTermId] [varchar] (100) NULL,
[PostingProfileApprove] [varchar] (10) NULL,
[PostingProfileCancel] [varchar] (10) NULL,
[PostingProfileClose] [varchar] (10) NULL,
[PostingProfileReOpen] [varchar] (10) NULL,
[Prepayment] [varchar] (51) NULL,
[PromissoryNoteID] [varchar] (30) NULL,
[PromissoryNoteSeqNum] [int] NULL,
[PromissoryNoteStatus] [varchar] (51) NULL,
[RBOVendTrans] [varchar] (51) NULL,
[ReasonRefRecId] [bigint] NULL,
[ReleaseDateComment] [varchar] (60) NULL,
[RemittanceAddress] [bigint] NULL,
[RemittanceLocation] [bigint] NULL,
[ReportingCurrencyAmount] [float] NULL,
[ReportingCurrencyCrossRate] [float] NULL,
[ReportingExchAdjustmentRealized] [varchar] (51) NULL,
[ReportingExchAdjustmentUnrealized] [varchar] (51) NULL,
[SettleAmountCur] [float] NULL,
[SettleAmountMST] [float] NULL,
[SettleAmountReporting] [float] NULL,
[Settlement] [varchar] (51) NULL,
[SettleTax1099Amount] [varchar] (51) NULL,
[SettleTax1099StateAmount] [varchar] (51) NULL,
[Tax1099Amount] [float] NULL,
[Tax1099Date] [varchar] (40) NULL,
[Tax1099Fields] [bigint] NULL,
[Tax1099Num] [varchar] (30) NULL,
[Tax1099RecId] [bigint] NULL,
[Tax1099State] [varchar] (10) NULL,
[Tax1099StateAmount] [float] NULL,
[TaxInvoicePurchId] [varchar] (30) NULL,
[ThirdPartyBankAccountId] [varchar] (10) NULL,
[TransDate] [varchar] (40) NULL,
[TransType] [varchar] (51) NULL,
[Txt] [varchar] (512) NULL,
[VendExchAdjustmentRealized] [varchar] (51) NULL,
[VendExchAdjustmentUnrealized] [varchar] (51) NULL,
[VendPaymentGroup] [varchar] (10) NULL,
[Voucher] [varchar] (30) NULL,
[ReportingCurrencyExchRate] [varchar] (51) NULL,
[ReportingCurrencyExchRateSecondary] [varchar] (51) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDTRANSACTIONID] [bigint] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDTRANSACTIONID] [bigint] NULL,
[PSNPurchasingCardType] [varchar] (51) NULL,
[PSNJournalizingDefinition] [bigint] NULL,
[OH_ConsWorkOrderId] [varchar] (30) NULL,
[VendorVATDate] [varchar] (40) NULL,
[ArrivalAccountId] [varchar] (20) NULL,
[SummaryAccountId] [varchar] (20) NULL
)
WITH
(
LOCATION = N'Tables/Finance/AccountsPayable/Transaction/VendTrans/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO