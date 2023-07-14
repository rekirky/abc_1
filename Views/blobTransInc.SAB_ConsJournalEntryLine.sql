create   view [blobTransInc].[SAB_ConsJournalEntryLine] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[AmountCurCredit]=cast([AmountCurCredit] as numeric(18,2))
,[AmountCurDebit]=cast([AmountCurDebit] as numeric(18,2))
,[BankAccountId]
,[BankDepositNum]
,[BankDepositVoucher]
,[BankTransType]
,[CostCategory]
,[DataArea]
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DefaultDimension]
,[Description]
,[FinancialInstance]
,[JournalEntry]
,[LedgerDimension]
,[LineNumber]
,[LineType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsJournalEntryLineType' and e.EnumCode=t.[LineType]) ,LineTypeEnumID=[LineType]
,[PARTITION]
,[PaymReference]
,[RECID]
,[RECVERSION]
,[RevenueCategory]
 from stage.SAB_ConsJournalEntryLine t
GO
