create   proc [stage].[prcLoadSAB_ConsDesignCenterAttributeValue] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsDesignCenterAttributeValue t 
where exists 
	(select 1 from stage.SAB_ConsDesignCenterAttributeValue s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsDesignCenterAttributeValue with(tablock) as t
using (select * from blobTransInc.SAB_ConsDesignCenterAttributeValue where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[Attribute]=s.[Attribute],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[InstanceValue]=s.[InstanceValue],[IsDeleted]=s.[IsDeleted],[IsDeletedFlag]=s.[IsDeletedFlag],[LastChangeDateTime]=s.[LastChangeDateTime],[LASTCHANGEDATETIMETZID]=s.[LASTCHANGEDATETIMETZID],[LastChangeWorker]=s.[LastChangeWorker],[Location]=s.[Location],[LocationGroup]=s.[LocationGroup],[OPTION_]=s.[OPTION_],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[TradeType]=s.[TradeType],[Value]=s.[Value]
when not matched then insert(
	[Attribute],[DataLakeModified_DateTime],[InstanceValue],[IsDeleted],[IsDeletedFlag],[LastChangeDateTime],[LASTCHANGEDATETIMETZID],[LastChangeWorker],[Location],[LocationGroup],[OPTION_],[PARTITION],[RECID],[RECVERSION],[TradeType],[Value]
)
values (
[Attribute],[DataLakeModified_DateTime],[InstanceValue],[IsDeleted],[IsDeletedFlag],[LastChangeDateTime],[LASTCHANGEDATETIMETZID],[LastChangeWorker],[Location],[LocationGroup],[OPTION_],[PARTITION],[RECID],[RECVERSION],[TradeType],[Value]
);

end
GO
