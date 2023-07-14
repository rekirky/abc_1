create   proc [stage].[prcLoadSAB_ConsInstanceValue] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsInstanceValue t 
where exists 
	(select 1 from stage.SAB_ConsInstanceValue s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsInstanceValue with(tablock) as t
using (select * from blobTransInc.SAB_ConsInstanceValue where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[BUILDINGTYPE]=s.[BUILDINGTYPE],[CLOSINGTASK]=s.[CLOSINGTASK],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[ELEMENTOPENINGTASK]=s.[ELEMENTOPENINGTASK],[InstanceRelationType]=s.[InstanceRelationType],[LEAD]=s.[LEAD],[LOT]=s.[LOT],[LOTSTRUCTUREELEMENT]=s.[LOTSTRUCTUREELEMENT],[OPPORTUNITY]=s.[OPPORTUNITY],[OPTION_]=s.[OPTION_],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[RELATIONTYPE]=s.[RELATIONTYPE]
when not matched then insert(
	[BUILDINGTYPE],[CLOSINGTASK],[DataLakeModified_DateTime],[ELEMENTOPENINGTASK],[InstanceRelationType],[LEAD],[LOT],[LOTSTRUCTUREELEMENT],[OPPORTUNITY],[OPTION_],[PARTITION],[RECID],[RECVERSION],[RELATIONTYPE]
)
values (
[BUILDINGTYPE],[CLOSINGTASK],[DataLakeModified_DateTime],[ELEMENTOPENINGTASK],[InstanceRelationType],[LEAD],[LOT],[LOTSTRUCTUREELEMENT],[OPPORTUNITY],[OPTION_],[PARTITION],[RECID],[RECVERSION],[RELATIONTYPE]
);

end
GO
