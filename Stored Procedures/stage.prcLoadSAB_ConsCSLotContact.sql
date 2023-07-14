create   proc [stage].[prcLoadSAB_ConsCSLotContact] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsCSLotContact t 
where exists 
	(select 1 from stage.SAB_ConsCSLotContact s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsCSLotContact with(tablock) as t
using (select * from blobTransInc.SAB_ConsCSLotContact where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[Active]=s.[Active],[ActiveFlag]=s.[ActiveFlag],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[IsPrimary]=s.[IsPrimary],[IsPrimaryFlag]=s.[IsPrimaryFlag],[Lot]=s.[Lot],[OccupantStatus]=s.[OccupantStatus],[PARTITION]=s.[PARTITION],[Party]=s.[Party],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION]
when not matched then insert(
	[Active],[ActiveFlag],[DataLakeModified_DateTime],[IsPrimary],[IsPrimaryFlag],[Lot],[OccupantStatus],[PARTITION],[Party],[RECID],[RECVERSION]
)
values (
[Active],[ActiveFlag],[DataLakeModified_DateTime],[IsPrimary],[IsPrimaryFlag],[Lot],[OccupantStatus],[PARTITION],[Party],[RECID],[RECVERSION]
);

end
GO
