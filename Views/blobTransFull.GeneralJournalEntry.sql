create   view [blobTransFull].[GeneralJournalEntry] as select 
LSN,[AccountingDate]=cast(case when [AccountingDate] < cast('1901-01-01' as date) then null else [AccountingDate] end as date)
,[AcknowledgementDate]=cast(case when [AcknowledgementDate] < cast('1901-01-01' as date) then null else [AcknowledgementDate] end as date)
,[BudgetSourceLedgerEntryPosted]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[CREATEDTRANSACTIONID]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DocumentDate]=cast(case when [DocumentDate] < cast('1901-01-01' as date) then null else [DocumentDate] end as date)
,[DocumentNumber]
,[FiscalCalendarPeriod]
,[FiscalCalendarYear]
,[JournalCategory]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='LedgerTransType' and e.EnumCode=t.[JournalCategory]) ,JournalCategoryEnumID=[JournalCategory]
,[JournalNumber]
,[Ledger]
,[LedgerEntryJournal]
,[LedgerPostingJournal]
,[LedgerPostingJournalDataAreaId]
,[PARTITION]
,[PostingLayer]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='CurrentOperationsTax' and e.EnumCode=t.[PostingLayer]) ,PostingLayerEnumID=[PostingLayer]
,[RECID]
,[RECVERSION]
,[SubledgerVoucher]
,[SubledgerVoucherDataAreaId]
,[TransferId]
 from stage.GeneralJournalEntry t
GO
