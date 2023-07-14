create   proc [stage].[prcLoadSAB_ConsWorkOrderVersion] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsWorkOrderVersion t 
where exists 
	(select 1 from stage.SAB_ConsWorkOrderVersion s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsWorkOrderVersion with(tablock) as t
using (select * from blobTransInc.SAB_ConsWorkOrderVersion where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[IsArchived]=s.[IsArchived],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[VersionDateTime]=s.[VersionDateTime],[VERSIONDATETIMETZID]=s.[VERSIONDATETIMETZID],[WorkOrder]=s.[WorkOrder]
when not matched then insert(
	[DataLakeModified_DateTime],[IsArchived],[PARTITION],[RECID],[RECVERSION],[VersionDateTime],[VERSIONDATETIMETZID],[WorkOrder]
)
values (
[DataLakeModified_DateTime],[IsArchived],[PARTITION],[RECID],[RECVERSION],[VersionDateTime],[VERSIONDATETIMETZID],[WorkOrder]
);

end
GO
