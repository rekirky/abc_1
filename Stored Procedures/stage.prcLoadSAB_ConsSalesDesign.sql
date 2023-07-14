create   proc [stage].[prcLoadSAB_ConsSalesDesign] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsSalesDesign t 
where exists 
	(select 1 from stage.SAB_ConsSalesDesign s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsSalesDesign with(tablock) as t
using (select * from blobTransInc.SAB_ConsSalesDesign where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[BuildingTypeId]=s.[BuildingTypeId],[ColorScheme]=s.[ColorScheme],[CREATEDDATETIME]=s.[CREATEDDATETIME],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[EstimateType]=s.[EstimateType],[FacadeId]=s.[FacadeId],[Inactive]=s.[Inactive],[InactiveFlag]=s.[InactiveFlag],[Lot]=s.[Lot],[LotStructureElement]=s.[LotStructureElement],[Name]=s.[Name],[Opportunity]=s.[Opportunity],[Orientation]=s.[Orientation],[OrientationEnumID]=s.[OrientationEnumID],[OwnerWorker]=s.[OwnerWorker],[PARTITION]=s.[PARTITION],[PlanChange]=s.[PlanChange],[PlanChangeFlag]=s.[PlanChangeFlag],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[SalesQuickQuotation]=s.[SalesQuickQuotation],[Type]=s.[Type],[TypeEnumID]=s.[TypeEnumID]
when not matched then insert(
	[BuildingTypeId],[ColorScheme],[CREATEDDATETIME],[DataLakeModified_DateTime],[EstimateType],[FacadeId],[Inactive],[InactiveFlag],[Lot],[LotStructureElement],[Name],[Opportunity],[Orientation],[OrientationEnumID],[OwnerWorker],[PARTITION],[PlanChange],[PlanChangeFlag],[RECID],[RECVERSION],[SalesQuickQuotation],[Type],[TypeEnumID]
)
values (
[BuildingTypeId],[ColorScheme],[CREATEDDATETIME],[DataLakeModified_DateTime],[EstimateType],[FacadeId],[Inactive],[InactiveFlag],[Lot],[LotStructureElement],[Name],[Opportunity],[Orientation],[OrientationEnumID],[OwnerWorker],[PARTITION],[PlanChange],[PlanChangeFlag],[RECID],[RECVERSION],[SalesQuickQuotation],[Type],[TypeEnumID]
);

end
GO
