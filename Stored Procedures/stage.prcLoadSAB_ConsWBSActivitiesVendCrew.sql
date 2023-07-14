create   proc [stage].[prcLoadSAB_ConsWBSActivitiesVendCrew] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsWBSActivitiesVendCrew t 
where exists 
	(select 1 from stage.SAB_ConsWBSActivitiesVendCrew s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsWBSActivitiesVendCrew with(tablock) as t
using (select * from blobTransInc.SAB_ConsWBSActivitiesVendCrew where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[ActivityNumber]=s.[ActivityNumber],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[VendCrew]=s.[VendCrew],[Vendor]=s.[Vendor]
when not matched then insert(
	[ActivityNumber],[DataLakeModified_DateTime],[PARTITION],[RECID],[RECVERSION],[VendCrew],[Vendor]
)
values (
[ActivityNumber],[DataLakeModified_DateTime],[PARTITION],[RECID],[RECVERSION],[VendCrew],[Vendor]
);

end
GO
