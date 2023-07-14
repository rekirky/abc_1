CREATE TABLE [dbo].[BankAccountTrans]
(
[AccountId] [varchar] (10) NULL,
[AccountingCurrencyAmountCorrect_RU] [numeric] (18, 2) NULL,
[AccountStatement] [varchar] (20) NULL,
[AccountStatementDate] [date] NULL,
[AcknowledgementDate] [date] NULL,
[AmountCorrect] [numeric] (18, 2) NULL,
[AmountCur] [numeric] (18, 2) NULL,
[AmountMST] [numeric] (18, 2) NULL,
[AmountReportingCurrency] [numeric] (18, 2) NULL,
[BankPaymentRegistrationNum_LV] [varchar] (20) NULL,
[BankTransAmountCur] [numeric] (18, 2) NULL,
[BankTransCurrencyCode] [varchar] (3) NULL,
[BankTransType] [varchar] (10) NULL,
[Cancel] [varchar] (3) NULL,
[CancelFlag] [bit] NULL,
[CancelPending] [varchar] (3) NULL,
[CancelPendingFlag] [bit] NULL,
[CentralBankPurposeCode_LV] [varchar] (10) NULL,
[CentralBankPurposeText_LV] [varchar] (210) NULL,
[ChequeNum] [varchar] (20) NULL,
[ClearedDate] [date] NULL,
[CorrespondentCountry_LV] [varchar] (10) NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[CurrencyCode] [varchar] (3) NULL,
[DataAreaId] [varchar] (4) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DefaultDimension] [varchar] (51) NULL,
[DepositNum] [varchar] (30) NULL,
[Included] [varchar] (3) NULL,
[IncludedFlag] [bit] NULL,
[LedgerDimension] [varchar] (51) NULL,
[LedgerTransType] [varchar] (256) NULL,
[LedgerTransTypeEnumID] [varchar] (51) NULL,
[Manual] [varchar] (3) NULL,
[ManualFlag] [bit] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [date] NULL,
[PARTITION] [bigint] NULL,
[PaymentMode] [varchar] (10) NULL,
[PaymReference] [varchar] (35) NULL,
[ReasonRefRecID] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[Reconciled] [varchar] (3) NULL,
[ReconciledFlag] [bit] NULL,
[RECVERSION] [int] NULL,
[RefRecId_RU] [bigint] NULL,
[ReportingCurrencyAmount_RU] [numeric] (18, 2) NULL,
[ReportingCurrencyAmountCorrect_RU] [numeric] (18, 2) NULL,
[SourceRecId] [bigint] NULL,
[SourceTableId] [varchar] (51) NULL,
[TaxGroup] [varchar] (10) NULL,
[TaxItemGroup] [varchar] (10) NULL,
[TransDate] [date] NULL,
[Txt] [varchar] (512) NULL,
[Voucher] [varchar] (30) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BankAccountTrans] ADD CONSTRAINT [PK_BankAccountTrans_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO