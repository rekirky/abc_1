create   proc [stage].[prcLoadSAB_ConsClosingLotCostAccrualTrans] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsClosingLotCostAccrualTrans t 
where exists 
	(select 1 from stage.SAB_ConsClosingLotCostAccrualTrans s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsClosingLotCostAccrualTrans with(tablock) as t
using (select * from blobTransInc.SAB_ConsClosingLotCostAccrualTrans where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[Amount]=s.[Amount],[CostCategory]=s.[CostCategory],[DataAreaId]=s.[DataAreaId],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DefaultDimension]=s.[DefaultDimension],[FinancialInstance]=s.[FinancialInstance],[LedgerDimension]=s.[LedgerDimension],[PARTITION]=s.[PARTITION],[PostingType]=s.[PostingType],[PostingTypeEnumID]=s.[PostingTypeEnumID],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[TransDate]=s.[TransDate],[Type]=s.[Type],[TypeEnumID]=s.[TypeEnumID],[Voucher]=s.[Voucher]
when not matched then insert(
	[Amount],[CostCategory],[DataAreaId],[DataLakeModified_DateTime],[DefaultDimension],[FinancialInstance],[LedgerDimension],[PARTITION],[PostingType],[PostingTypeEnumID],[RECID],[RECVERSION],[TransDate],[Type],[TypeEnumID],[Voucher]
)
values (
[Amount],[CostCategory],[DataAreaId],[DataLakeModified_DateTime],[DefaultDimension],[FinancialInstance],[LedgerDimension],[PARTITION],[PostingType],[PostingTypeEnumID],[RECID],[RECVERSION],[TransDate],[Type],[TypeEnumID],[Voucher]
);

end
GO
