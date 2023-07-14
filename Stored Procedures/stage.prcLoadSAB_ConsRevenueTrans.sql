create   proc [stage].[prcLoadSAB_ConsRevenueTrans] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsRevenueTrans t 
where exists 
	(select 1 from stage.SAB_ConsRevenueTrans s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsRevenueTrans with(tablock) as t
using (select * from blobTransInc.SAB_ConsRevenueTrans where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[AmountMST]=s.[AmountMST],[DataAreaId]=s.[DataAreaId],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DefaultDimension]=s.[DefaultDimension],[FinancialInstance]=s.[FinancialInstance],[LedgerDimension]=s.[LedgerDimension],[PARTITION]=s.[PARTITION],[PostingType]=s.[PostingType],[PostingTypeEnumID]=s.[PostingTypeEnumID],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[RevenueCategory]=s.[RevenueCategory],[TransDate]=s.[TransDate],[Voucher]=s.[Voucher]
when not matched then insert(
	[AmountMST],[DataAreaId],[DataLakeModified_DateTime],[DefaultDimension],[FinancialInstance],[LedgerDimension],[PARTITION],[PostingType],[PostingTypeEnumID],[RECID],[RECVERSION],[RevenueCategory],[TransDate],[Voucher]
)
values (
[AmountMST],[DataAreaId],[DataLakeModified_DateTime],[DefaultDimension],[FinancialInstance],[LedgerDimension],[PARTITION],[PostingType],[PostingTypeEnumID],[RECID],[RECVERSION],[RevenueCategory],[TransDate],[Voucher]
);

end
GO
