create   proc [stage].[prcLoadSAB_ConsFinancialInstance] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsFinancialInstance t 
where exists 
	(select 1 from stage.SAB_ConsFinancialInstance s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsFinancialInstance with(tablock) as t
using (select * from blobTransInc.SAB_ConsFinancialInstance where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[ACCRUED]=s.[ACCRUED],[Active]=s.[Active],[ActiveEnumID]=s.[ActiveEnumID],[AllocationExclude]=s.[AllocationExclude],[AllocationExcludeEnumID]=s.[AllocationExcludeEnumID],[BillingTemplate]=s.[BillingTemplate],[BudgetDatesLocked]=s.[BudgetDatesLocked],[CLOSED]=s.[CLOSED],[DataArea]=s.[DataArea],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DEFAULTDIMENSION]=s.[DEFAULTDIMENSION],[DEFAULTDIMENSIONSELLING]=s.[DEFAULTDIMENSIONSELLING],[Description]=s.[Description],[FINALIZATIONSTATUS]=s.[FINALIZATIONSTATUS],[FINALIZED]=s.[FINALIZED],[FinancialInstanceId]=s.[FinancialInstanceId],[InstanceRelationType]=s.[InstanceRelationType],[LOT]=s.[LOT],[LOTSTRUCTUREELEMENT]=s.[LOTSTRUCTUREELEMENT],[Name]=s.[Name],[PARTITION]=s.[PARTITION],[PostingGroup]=s.[PostingGroup],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[RELATIONTYPE]=s.[RELATIONTYPE],[ReleaseGroup]=s.[ReleaseGroup],[TAXENTITY]=s.[TAXENTITY],[TaxGroup]=s.[TaxGroup]
when not matched then insert(
	[ACCRUED],[Active],[ActiveEnumID],[AllocationExclude],[AllocationExcludeEnumID],[BillingTemplate],[BudgetDatesLocked],[CLOSED],[DataArea],[DataLakeModified_DateTime],[DEFAULTDIMENSION],[DEFAULTDIMENSIONSELLING],[Description],[FINALIZATIONSTATUS],[FINALIZED],[FinancialInstanceId],[InstanceRelationType],[LOT],[LOTSTRUCTUREELEMENT],[Name],[PARTITION],[PostingGroup],[RECID],[RECVERSION],[RELATIONTYPE],[ReleaseGroup],[TAXENTITY],[TaxGroup]
)
values (
[ACCRUED],[Active],[ActiveEnumID],[AllocationExclude],[AllocationExcludeEnumID],[BillingTemplate],[BudgetDatesLocked],[CLOSED],[DataArea],[DataLakeModified_DateTime],[DEFAULTDIMENSION],[DEFAULTDIMENSIONSELLING],[Description],[FINALIZATIONSTATUS],[FINALIZED],[FinancialInstanceId],[InstanceRelationType],[LOT],[LOTSTRUCTUREELEMENT],[Name],[PARTITION],[PostingGroup],[RECID],[RECVERSION],[RELATIONTYPE],[ReleaseGroup],[TAXENTITY],[TaxGroup]
);

end
GO
