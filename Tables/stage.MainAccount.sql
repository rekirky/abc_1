CREATE TABLE [stage].[MainAccount]
(
[Instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[AccountCategoryRef] [int] NULL,
[AdjustmentMethod_MX] [varchar] (51) NULL,
[CloseType] [varchar] (51) NULL,
[Closing] [varchar] (51) NULL,
[ConsolidationMainAccount] [varchar] (10) NULL,
[CurrencyCode] [varchar] (3) NULL,
[DebitCreditBalanceDemand] [varchar] (51) NULL,
[DebitCreditCheck] [varchar] (51) NULL,
[DebitCreditProposal] [varchar] (51) NULL,
[ExchangeAdjusted] [varchar] (51) NULL,
[ExchangeAdjustmentRateType] [varchar] (51) NULL,
[FinancialReportingExchangeRateType] [varchar] (51) NULL,
[FinancialReportingTranslationType] [varchar] (51) NULL,
[InflationAdjustment_MX] [varchar] (51) NULL,
[LedgerChartOfAccounts] [bigint] NULL,
[MainAccountId] [varchar] (20) NULL,
[MainAccountTemplate] [bigint] NULL,
[MandatoryPaymentReference] [varchar] (51) NULL,
[Monetary] [varchar] (51) NULL,
[Name] [varchar] (60) NULL,
[OffsetLedgerDimension] [varchar] (51) NULL,
[OpeningAccount] [bigint] NULL,
[ParentMainAccount] [bigint] NULL,
[PostingType] [varchar] (51) NULL,
[RepomoType_MX] [varchar] (51) NULL,
[ReportingAccountType] [varchar] (51) NULL,
[SRUCode] [varchar] (4) NULL,
[TransferYearEndAccount_ES] [bigint] NULL,
[Type] [varchar] (51) NULL,
[UnitOfMeasure] [bigint] NULL,
[UserInfoId] [varchar] (20) NULL,
[ValidateCurrency] [varchar] (51) NULL,
[ValidatePosting] [varchar] (51) NULL,
[ValidateUser] [varchar] (51) NULL,
[ReportingExchangeAdjustmentRateType] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[StandardMainAccount_W] [bigint] NULL
) ON [PRIMARY]
GO
