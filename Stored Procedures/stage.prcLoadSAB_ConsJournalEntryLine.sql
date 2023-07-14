create   proc [stage].[prcLoadSAB_ConsJournalEntryLine] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsJournalEntryLine t 
where exists 
	(select 1 from stage.SAB_ConsJournalEntryLine s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsJournalEntryLine with(tablock) as t
using (select * from blobTransInc.SAB_ConsJournalEntryLine where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[AmountCurCredit]=s.[AmountCurCredit],[AmountCurDebit]=s.[AmountCurDebit],[BankAccountId]=s.[BankAccountId],[BankDepositNum]=s.[BankDepositNum],[BankDepositVoucher]=s.[BankDepositVoucher],[BankTransType]=s.[BankTransType],[CostCategory]=s.[CostCategory],[DataArea]=s.[DataArea],[DataAreaId]=s.[DataAreaId],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DefaultDimension]=s.[DefaultDimension],[Description]=s.[Description],[FinancialInstance]=s.[FinancialInstance],[JournalEntry]=s.[JournalEntry],[LedgerDimension]=s.[LedgerDimension],[LineNumber]=s.[LineNumber],[LineType]=s.[LineType],[LineTypeEnumID]=s.[LineTypeEnumID],[PARTITION]=s.[PARTITION],[PaymReference]=s.[PaymReference],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[RevenueCategory]=s.[RevenueCategory]
when not matched then insert(
	[AmountCurCredit],[AmountCurDebit],[BankAccountId],[BankDepositNum],[BankDepositVoucher],[BankTransType],[CostCategory],[DataArea],[DataAreaId],[DataLakeModified_DateTime],[DefaultDimension],[Description],[FinancialInstance],[JournalEntry],[LedgerDimension],[LineNumber],[LineType],[LineTypeEnumID],[PARTITION],[PaymReference],[RECID],[RECVERSION],[RevenueCategory]
)
values (
[AmountCurCredit],[AmountCurDebit],[BankAccountId],[BankDepositNum],[BankDepositVoucher],[BankTransType],[CostCategory],[DataArea],[DataAreaId],[DataLakeModified_DateTime],[DefaultDimension],[Description],[FinancialInstance],[JournalEntry],[LedgerDimension],[LineNumber],[LineType],[LineTypeEnumID],[PARTITION],[PaymReference],[RECID],[RECVERSION],[RevenueCategory]
);

end
GO
