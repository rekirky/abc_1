create   proc [stage].[prcLoadLedgerTransVoucherLink] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.LedgerTransVoucherLink t 
where exists 
	(select 1 from stage.LedgerTransVoucherLink s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.LedgerTransVoucherLink with(tablock) as t
using (select * from blobTransInc.LedgerTransVoucherLink where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[DataAreaId]=s.[DataAreaId],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[TransDate]=s.[TransDate],[Voucher]=s.[Voucher],[VoucherGroupId]=s.[VoucherGroupId]
when not matched then insert(
	[DataAreaId],[DataLakeModified_DateTime],[PARTITION],[RECID],[RECVERSION],[TransDate],[Voucher],[VoucherGroupId]
)
values (
[DataAreaId],[DataLakeModified_DateTime],[PARTITION],[RECID],[RECVERSION],[TransDate],[Voucher],[VoucherGroupId]
);

end
GO
