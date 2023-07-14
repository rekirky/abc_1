create   proc [stage].[prcLoadSAB_ConsStatusLogUpdateHistory] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsStatusLogUpdateHistory t 
where exists 
	(select 1 from stage.SAB_ConsStatusLogUpdateHistory s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsStatusLogUpdateHistory with(tablock) as t
using (select * from blobTransInc.SAB_ConsStatusLogUpdateHistory where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[CREATEDBY]=s.[CREATEDBY],[CREATEDDATETIME]=s.[CREATEDDATETIME],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[NewTransDate]=s.[NewTransDate],[OriginalTransDate]=s.[OriginalTransDate],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[Status]=s.[Status],[StatusEnumID]=s.[StatusEnumID],[StatusLog]=s.[StatusLog]
when not matched then insert(
	[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[NewTransDate],[OriginalTransDate],[PARTITION],[RECID],[RECVERSION],[Status],[StatusEnumID],[StatusLog]
)
values (
[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[NewTransDate],[OriginalTransDate],[PARTITION],[RECID],[RECVERSION],[Status],[StatusEnumID],[StatusLog]
);

end
GO
