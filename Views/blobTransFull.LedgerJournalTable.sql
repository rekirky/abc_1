create   view [blobTransFull].[LedgerJournalTable] as select 
LSN,[Approver]
,[AssetLeaseProcessId]
,[AssetTransferType_LT]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='LtAssetTransferType' and e.EnumCode=t.[AssetTransferType_LT]) ,AssetTransferType_LTEnumID=[AssetTransferType_LT]
,[BankAccountId]
,[BankRemittanceType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='BankRemittanceType' and e.EnumCode=t.[BankRemittanceType]) ,BankRemittanceTypeEnumID=[BankRemittanceType]
,[CREATEDBY]
,[CurrencyCode]
,[CurrentOperationsTax]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='CurrentOperationsTax' and e.EnumCode=t.[CurrentOperationsTax]) ,CurrentOperationsTaxEnumID=[CurrentOperationsTax]
,[CustVendNegInstProtestProcess]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='CustVendNegInstProtestProcess' and e.EnumCode=t.[CustVendNegInstProtestProcess]) ,CustVendNegInstProtestProcessEnumID=[CustVendNegInstProtestProcess]
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DefaultDimension]
,[DelayTaxCalculation]=case when [DelayTaxCalculation]=1 then 'Yes' else 'No' end ,DelayTaxCalculationFlag=cast([DelayTaxCalculation] as bit)
,[DetailSummaryPosting]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='DetailSummary' and e.EnumCode=t.[DetailSummaryPosting]) ,DetailSummaryPostingEnumID=[DetailSummaryPosting]
,[DocumentNum]
,[EndBalance]=cast([EndBalance] as numeric(18,2))
,[EUROTriangulation]
,[ExchRate]
,[ExchrateSecondary]
,[FixedExchRate]
,[FixedOffsetAccount]
,[GroupBlockId]
,[IntegrationKey]
,[InUseBy]
,[IsAdjustmentJournal]=case when [IsAdjustmentJournal]=1 then 'Yes' else 'No' end ,IsAdjustmentJournalFlag=cast([IsAdjustmentJournal] as bit)
,[IsLedgerDimensionNameUpdated]=case when [IsLedgerDimensionNameUpdated]=1 then 'Yes' else 'No' end ,IsLedgerDimensionNameUpdatedFlag=cast([IsLedgerDimensionNameUpdated] as bit)
,[JournalBalance]=cast([JournalBalance] as numeric(18,2))
,[JournalName]
,[JournalNum]
,[JournalTotalCredit]=cast([JournalTotalCredit] as numeric(18,2))
,[JournalTotalCreditReportingCurrency]=cast([JournalTotalCreditReportingCurrency] as numeric(18,2))
,[JournalTotalDebit]=cast([JournalTotalDebit] as numeric(18,2))
,[JournalTotalDebitReportingCurrency]=cast([JournalTotalDebitReportingCurrency] as numeric(18,2))
,[journalTotalOffsetBalance]=cast([journalTotalOffsetBalance] as numeric(18,2))
,[JournalType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='LedgerJournalType' and e.EnumCode=t.[JournalType]) ,JournalTypeEnumID=[JournalType]
,[LedgerJournalInclTax]
,[LinesLimitBeforeDistribution]
,[Log]
,[MODIFIEDBY]
,[Name]
,[NumberSequenceTable]
,[NumOfLines]
,[OffsetAccountType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='LedgerJournalACType' and e.EnumCode=t.[OffsetAccountType]) ,OffsetAccountTypeEnumID=[OffsetAccountType]
,[OffsetLedgerDimension]
,[OriginalCompany]
,[OriginalJournalNum]
,[OverrideSalesTax]
,[PARTITION]
,[PaymentsGenerated_IT]=case when [PaymentsGenerated_IT]=1 then 'Yes' else 'No' end ,PaymentsGenerated_ITFlag=cast([PaymentsGenerated_IT] as bit)
,[Posted]
,[PostedDateTime]=cast([PostedDateTime] as date)
,[POSTEDDATETIMETZID]
,[ProtestSettledBill]
,[RECID]
,[RECVERSION]
,[RejectedBy]
,[REMOVELINEAFTERPOSTING]
,[ReportedAsReadyBy]
,[ReportingCurrencyExchRate]
,[ReportingCurrencyExchRateSecondary]
,[ReportingCurrencyFixedExchRate]
,[RetailStatementId]
,[ReverseDate]=cast([ReverseDate] as date)
,[ReverseEntry]=case when [ReverseEntry]=1 then 'Yes' else 'No' end ,ReverseEntryFlag=cast([ReverseEntry] as bit)
,[RevRecReallocationId]
,[SessionId]
,[SessionLoginDateTime]=cast([SessionLoginDateTime] as date)
,[SESSIONLOGINDATETIMETZID]
,[SimulationPosted_IT]=case when [SimulationPosted_IT]=1 then 'Yes' else 'No' end ,SimulationPosted_ITFlag=cast([SimulationPosted_IT] as bit)
,[SystemBlocked]
,[TaxObligationCompany]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='TaxObligationCompany' and e.EnumCode=t.[TaxObligationCompany]) ,TaxObligationCompanyEnumID=[TaxObligationCompany]
,[UserBlockId]
,[VoucherAllocatedAtPosting]
,[WorkflowApprovalStatus]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='LedgerJournalWFApprovalStatus' and e.EnumCode=t.[WorkflowApprovalStatus]) ,WorkflowApprovalStatusEnumID=[WorkflowApprovalStatus]
 from blobFull.LedgerJournalTable t
GO
