create   view [blobTransInc].[GeneralJournalAccountEntry] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[AccountingCurrencyAmount]=cast([AccountingCurrencyAmount] as numeric(18,2))
,[AllocationLevel]
,[AssetLeasePostingTypes]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='AssetLeasePostingTypes' and e.EnumCode=t.[AssetLeasePostingTypes]) ,AssetLeasePostingTypesEnumID=[AssetLeasePostingTypes]
,[ASSETLEASETRANSACTIONTYPE]
,[CREATEDTRANSACTIONID]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[GeneralJournalEntry]
,[HistoricalExchangeRateDate]=cast([HistoricalExchangeRateDate] as date)
,[IsCorrection]=case when [IsCorrection]=1 then 'Yes' else 'No' end ,IsCorrectionFlag=cast([IsCorrection] as bit)
,[IsCredit]=case when [IsCredit]=1 then 'Yes' else 'No' end ,IsCreditFlag=cast([IsCredit] as bit)
,[LedgerAccount]
,[LedgerDimension]
,[MainAccount]
,[OriginalAccountEntry]
,[PARTITION]
,[PaymentReference]
,[PostingType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='LedgerPostingType' and e.EnumCode=t.[PostingType]) ,PostingTypeEnumID=[PostingType]
,[ProjId_SA]
,[ProjTableDataAreaId]
,[Quantity]=cast([Quantity] as numeric(18,6))
,[ReasonRef]
,[RECID]
,[RECVERSION]
,[ReportingCurrencyAmount]=cast([ReportingCurrencyAmount] as numeric(18,2))
,[Text]
,[TransactionCurrencyAmount]=cast([TransactionCurrencyAmount] as numeric(18,2))
,[TransactionCurrencyCode]
 from stage.GeneralJournalAccountEntry t
GO
