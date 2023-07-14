create   proc [stage].[prcLoadSAB_ConsCostTrans] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsCostTrans t 
where exists 
	(select 1 from stage.SAB_ConsCostTrans s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsCostTrans with(tablock) as t
using (select * from blobTransInc.SAB_ConsCostTrans where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[AmountMST]=s.[AmountMST],[CostCategory]=s.[CostCategory],[DataAreaId]=s.[DataAreaId],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DefaultDimension]=s.[DefaultDimension],[FinancialInstance]=s.[FinancialInstance],[LedgerDimension]=s.[LedgerDimension],[PARTITION]=s.[PARTITION],[PostingType]=s.[PostingType],[PostingTypeEnumID]=s.[PostingTypeEnumID],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[TransDate]=s.[TransDate],[Voucher]=s.[Voucher]
when not matched then insert(
	[AmountMST],[CostCategory],[DataAreaId],[DataLakeModified_DateTime],[DefaultDimension],[FinancialInstance],[LedgerDimension],[PARTITION],[PostingType],[PostingTypeEnumID],[RECID],[RECVERSION],[TransDate],[Voucher]
)
values (
[AmountMST],[CostCategory],[DataAreaId],[DataLakeModified_DateTime],[DefaultDimension],[FinancialInstance],[LedgerDimension],[PARTITION],[PostingType],[PostingTypeEnumID],[RECID],[RECVERSION],[TransDate],[Voucher]
);

end
GO
