create   proc [stage].[prcLoadDirPartyLocationRole] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.DirPartyLocationRole t 
where exists 
	(select 1 from stage.DirPartyLocationRole s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.DirPartyLocationRole with(tablock) as t
using (select * from blobTransInc.DirPartyLocationRole where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[LocationRole]=s.[LocationRole],[PARTITION]=s.[PARTITION],[PartyLocation]=s.[PartyLocation],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION]
when not matched then insert(
	[DataLakeModified_DateTime],[LocationRole],[PARTITION],[PartyLocation],[RECID],[RECVERSION]
)
values (
[DataLakeModified_DateTime],[LocationRole],[PARTITION],[PartyLocation],[RECID],[RECVERSION]
);

end
GO
