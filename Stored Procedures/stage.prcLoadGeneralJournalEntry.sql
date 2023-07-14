create   proc [stage].[prcLoadGeneralJournalEntry] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.GeneralJournalEntry t 
where exists 
	(select 1 from stage.GeneralJournalEntry s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.GeneralJournalEntry with(tablock) as t
using (select * from blobTransInc.GeneralJournalEntry where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[AccountingDate]=s.[AccountingDate],[AcknowledgementDate]=s.[AcknowledgementDate],[BudgetSourceLedgerEntryPosted]=s.[BudgetSourceLedgerEntryPosted],[CREATEDBY]=s.[CREATEDBY],[CREATEDDATETIME]=s.[CREATEDDATETIME],[CREATEDTRANSACTIONID]=s.[CREATEDTRANSACTIONID],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DocumentDate]=s.[DocumentDate],[DocumentNumber]=s.[DocumentNumber],[FiscalCalendarPeriod]=s.[FiscalCalendarPeriod],[FiscalCalendarYear]=s.[FiscalCalendarYear],[JournalCategory]=s.[JournalCategory],[JournalCategoryEnumID]=s.[JournalCategoryEnumID],[JournalNumber]=s.[JournalNumber],[Ledger]=s.[Ledger],[LedgerEntryJournal]=s.[LedgerEntryJournal],[LedgerPostingJournal]=s.[LedgerPostingJournal],[LedgerPostingJournalDataAreaId]=s.[LedgerPostingJournalDataAreaId],[PARTITION]=s.[PARTITION],[PostingLayer]=s.[PostingLayer],[PostingLayerEnumID]=s.[PostingLayerEnumID],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[SubledgerVoucher]=s.[SubledgerVoucher],[SubledgerVoucherDataAreaId]=s.[SubledgerVoucherDataAreaId],[TransferId]=s.[TransferId]
when not matched then insert(
	[AccountingDate],[AcknowledgementDate],[BudgetSourceLedgerEntryPosted],[CREATEDBY],[CREATEDDATETIME],[CREATEDTRANSACTIONID],[DataLakeModified_DateTime],[DocumentDate],[DocumentNumber],[FiscalCalendarPeriod],[FiscalCalendarYear],[JournalCategory],[JournalCategoryEnumID],[JournalNumber],[Ledger],[LedgerEntryJournal],[LedgerPostingJournal],[LedgerPostingJournalDataAreaId],[PARTITION],[PostingLayer],[PostingLayerEnumID],[RECID],[RECVERSION],[SubledgerVoucher],[SubledgerVoucherDataAreaId],[TransferId]
)
values (
[AccountingDate],[AcknowledgementDate],[BudgetSourceLedgerEntryPosted],[CREATEDBY],[CREATEDDATETIME],[CREATEDTRANSACTIONID],[DataLakeModified_DateTime],[DocumentDate],[DocumentNumber],[FiscalCalendarPeriod],[FiscalCalendarYear],[JournalCategory],[JournalCategoryEnumID],[JournalNumber],[Ledger],[LedgerEntryJournal],[LedgerPostingJournal],[LedgerPostingJournalDataAreaId],[PARTITION],[PostingLayer],[PostingLayerEnumID],[RECID],[RECVERSION],[SubledgerVoucher],[SubledgerVoucherDataAreaId],[TransferId]
);

end
GO
