create   proc [stage].[prcLoadSAB_ConsAttributeValue] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsAttributeValue t 
where exists 
	(select 1 from stage.SAB_ConsAttributeValue s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsAttributeValue with(tablock) as t
using (select * from blobTransInc.SAB_ConsAttributeValue where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[Attribute]=s.[Attribute],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[InstanceValue]=s.[InstanceValue],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[Value]=s.[Value]
when not matched then insert(
	[Attribute],[DataLakeModified_DateTime],[InstanceValue],[PARTITION],[RECID],[RECVERSION],[Value]
)
values (
[Attribute],[DataLakeModified_DateTime],[InstanceValue],[PARTITION],[RECID],[RECVERSION],[Value]
);

end
GO
