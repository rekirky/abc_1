CREATE EXTERNAL TABLE [blobFull].[LedgerJournalTable]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[UserBlockId] [varchar] (20) NULL,
[Approver] [bigint] NULL,
[AssetTransferType_LT] [varchar] (51) NULL,
[BankAccountId] [varchar] (10) NULL,
[BankRemittanceType] [varchar] (51) NULL,
[CurrencyCode] [varchar] (3) NULL,
[CurrentOperationsTax] [varchar] (51) NULL,
[CustVendNegInstProtestProcess] [varchar] (51) NULL,
[DefaultDimension] [varchar] (51) NULL,
[DetailSummaryPosting] [varchar] (51) NULL,
[DocumentNum] [varchar] (20) NULL,
[EndBalance] [float] NULL,
[EUROTriangulation] [varchar] (51) NULL,
[ExchRate] [varchar] (51) NULL,
[ExchrateSecondary] [varchar] (51) NULL,
[FixedExchRate] [varchar] (51) NULL,
[FixedOffsetAccount] [varchar] (51) NULL,
[GroupBlockId] [varchar] (10) NULL,
[InUseBy] [varchar] (20) NULL,
[JournalBalance] [float] NULL,
[JournalName] [varchar] (10) NULL,
[JournalNum] [varchar] (30) NULL,
[JournalTotalCredit] [float] NULL,
[JournalTotalDebit] [float] NULL,
[journalTotalOffsetBalance] [float] NULL,
[JournalType] [varchar] (51) NULL,
[LedgerJournalInclTax] [varchar] (51) NULL,
[LinesLimitBeforeDistribution] [varchar] (51) NULL,
[Log] [varchar] (255) NULL,
[Name] [varchar] (120) NULL,
[NumberSequenceTable] [bigint] NULL,
[NumOfLines] [varchar] (51) NULL,
[OffsetAccountType] [varchar] (51) NULL,
[OffsetLedgerDimension] [varchar] (51) NULL,
[OriginalCompany] [varchar] (4) NULL,
[OriginalJournalNum] [varchar] (30) NULL,
[PaymentsGenerated_IT] [varchar] (51) NULL,
[Posted] [varchar] (51) NULL,
[PostedDateTime] [varchar] (40) NULL,
[POSTEDDATETIMETZID] [int] NULL,
[ProtestSettledBill] [varchar] (51) NULL,
[RejectedBy] [varchar] (20) NULL,
[REMOVELINEAFTERPOSTING] [int] NULL,
[ReportedAsReadyBy] [varchar] (20) NULL,
[RetailStatementId] [varchar] (20) NULL,
[ReverseDate] [varchar] (40) NULL,
[ReverseEntry] [varchar] (51) NULL,
[SessionId] [varchar] (51) NULL,
[SessionLoginDateTime] [varchar] (40) NULL,
[SESSIONLOGINDATETIMETZID] [int] NULL,
[SystemBlocked] [varchar] (51) NULL,
[TaxObligationCompany] [varchar] (51) NULL,
[VoucherAllocatedAtPosting] [varchar] (51) NULL,
[WorkflowApprovalStatus] [varchar] (51) NULL,
[IsLedgerDimensionNameUpdated] [varchar] (51) NULL,
[ReportingCurrencyExchRate] [varchar] (51) NULL,
[ReportingCurrencyExchRateSecondary] [varchar] (51) NULL,
[ReportingCurrencyFixedExchRate] [varchar] (51) NULL,
[JournalTotalCreditReportingCurrency] [float] NULL,
[JournalTotalDebitReportingCurrency] [float] NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[CREATEDBY] [varchar] (20) NULL,
[IntegrationKey] [varchar] (20) NULL,
[RevRecReallocationId] [varchar] (20) NULL,
[DelayTaxCalculation] [varchar] (51) NULL,
[SimulationPosted_IT] [varchar] (51) NULL,
[AssetLeaseProcessId] [varchar] (50) NULL,
[OverrideSalesTax] [varchar] (51) NULL,
[IsAdjustmentJournal] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/Finance/AccountingFoundation/WorksheetHeader/LedgerJournalTable/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
