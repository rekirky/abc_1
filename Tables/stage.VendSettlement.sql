CREATE TABLE [stage].[VendSettlement]
(
[instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[AccountNum] [varchar] (20) NULL,
[CanBeReversed] [varchar] (51) NULL,
[CashDiscountLedgerDimension] [varchar] (51) NULL,
[DefaultDimension] [bigint] NULL,
[DueDate] [varchar] (40) NULL,
[EUSalesList] [varchar] (30) NULL,
[ExchAdjustment] [varchar] (51) NULL,
[ExchAdjustmentReporting] [varchar] (51) NULL,
[FineAmount_BR] [float] NULL,
[FineCode_BR] [varchar] (10) NULL,
[InterestAmount_BR] [float] NULL,
[InterestCode_BR] [varchar] (10) NULL,
[LastInterestDateDummy] [varchar] (40) NULL,
[OffsetAccountNum] [varchar] (20) NULL,
[OffsetCompany] [varchar] (4) NULL,
[OffsetRecid] [bigint] NULL,
[OffsetTransVoucher] [varchar] (30) NULL,
[PennyDiff] [float] NULL,
[RemittanceAddress] [bigint] NULL,
[ReversedRecId_RU] [bigint] NULL,
[ReverseTrans_RU] [varchar] (51) NULL,
[SettleAmountCur] [float] NULL,
[SettleAmountMST] [float] NULL,
[SettleAmountReporting] [float] NULL,
[SettlementGroup] [bigint] NULL,
[SettlementVoucher] [varchar] (30) NULL,
[SettleTax1099Amount] [varchar] (51) NULL,
[SettleTax1099StateAmount] [varchar] (51) NULL,
[StatusVoucher] [varchar] (30) NULL,
[TaxVoucher_RU] [varchar] (30) NULL,
[ThirdPartyBankAccountId] [varchar] (10) NULL,
[TransCompany] [varchar] (4) NULL,
[TransDate] [varchar] (40) NULL,
[TransRecId] [bigint] NULL,
[UtilizedCashDisc] [float] NULL,
[VATTaxAgentAmount_RU] [float] NULL,
[VendCashDiscDate] [varchar] (40) NULL,
[VendPaymentGroup] [varchar] (10) NULL,
[ReportingDate_RU] [varchar] (40) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[ClosedDate] [varchar] (40) NULL,
[TransOpen] [bigint] NULL,
[TransType] [varchar] (51) NULL
) ON [PRIMARY]
GO
