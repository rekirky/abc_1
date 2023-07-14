create   proc [stage].[prcLoadSAB_ConsJournalEntry] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsJournalEntry t 
where exists 
	(select 1 from stage.SAB_ConsJournalEntry s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsJournalEntry with(tablock) as t
using (select * from blobTransInc.SAB_ConsJournalEntry where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[ApprovalStatus]=s.[ApprovalStatus],[ApprovalStatusEnumID]=s.[ApprovalStatusEnumID],[CREATEDBY]=s.[CREATEDBY],[DataAreaId]=s.[DataAreaId],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[Description]=s.[Description],[ForeignCompany]=s.[ForeignCompany],[ForeignJournalType]=s.[ForeignJournalType],[ForeignJournalTypeEnumID]=s.[ForeignJournalTypeEnumID],[ForeignVoucher]=s.[ForeignVoucher],[JournalEntryId]=s.[JournalEntryId],[JournalType]=s.[JournalType],[JournalTypeEnumID]=s.[JournalTypeEnumID],[MODIFIEDBY]=s.[MODIFIEDBY],[PARTITION]=s.[PARTITION],[Posted]=s.[Posted],[PostedFlag]=s.[PostedFlag],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[ReverseDate]=s.[ReverseDate],[ReverseEntry]=s.[ReverseEntry],[ReverseEntryRecId]=s.[ReverseEntryRecId],[TransDate]=s.[TransDate],[Voucher]=s.[Voucher]
when not matched then insert(
	[ApprovalStatus],[ApprovalStatusEnumID],[CREATEDBY],[DataAreaId],[DataLakeModified_DateTime],[Description],[ForeignCompany],[ForeignJournalType],[ForeignJournalTypeEnumID],[ForeignVoucher],[JournalEntryId],[JournalType],[JournalTypeEnumID],[MODIFIEDBY],[PARTITION],[Posted],[PostedFlag],[RECID],[RECVERSION],[ReverseDate],[ReverseEntry],[ReverseEntryRecId],[TransDate],[Voucher]
)
values (
[ApprovalStatus],[ApprovalStatusEnumID],[CREATEDBY],[DataAreaId],[DataLakeModified_DateTime],[Description],[ForeignCompany],[ForeignJournalType],[ForeignJournalTypeEnumID],[ForeignVoucher],[JournalEntryId],[JournalType],[JournalTypeEnumID],[MODIFIEDBY],[PARTITION],[Posted],[PostedFlag],[RECID],[RECVERSION],[ReverseDate],[ReverseEntry],[ReverseEntryRecId],[TransDate],[Voucher]
);

end
GO
