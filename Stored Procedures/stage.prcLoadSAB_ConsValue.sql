create   proc [stage].[prcLoadSAB_ConsValue] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsValue t 
where exists 
	(select 1 from stage.SAB_ConsValue s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsValue with(tablock) as t
using (select * from blobTransInc.SAB_ConsValue where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	RecId=s.RecId,Value=s.Value,DataLakeModified_DateTime=s.DataLakeModified_DateTime
when not matched then insert(
	RecId,Value,DataLakeModified_DateTime
)
values (
RecId,Value,DataLakeModified_DateTime
);

end
GO
