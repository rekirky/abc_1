create   proc [stage].[prcLoadSubledgerVoucherGeneralJournalEntry] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SubledgerVoucherGeneralJournalEntry t 
where exists 
	(select 1 from stage.SubledgerVoucherGeneralJournalEntry s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SubledgerVoucherGeneralJournalEntry with(tablock) as t
using (select * from blobTransInc.SubledgerVoucherGeneralJournalEntry where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[AccountingDate]=s.[AccountingDate],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[GeneralJournalEntry]=s.[GeneralJournalEntry],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[SubledgerJournalEntry]=s.[SubledgerJournalEntry],[TransferId]=s.[TransferId],[Voucher]=s.[Voucher],[VoucherDataAreaId]=s.[VoucherDataAreaId]
when not matched then insert(
	[AccountingDate],[DataLakeModified_DateTime],[GeneralJournalEntry],[PARTITION],[RECID],[RECVERSION],[SubledgerJournalEntry],[TransferId],[Voucher],[VoucherDataAreaId]
)
values (
[AccountingDate],[DataLakeModified_DateTime],[GeneralJournalEntry],[PARTITION],[RECID],[RECVERSION],[SubledgerJournalEntry],[TransferId],[Voucher],[VoucherDataAreaId]
);

end
GO
