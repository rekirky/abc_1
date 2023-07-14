create   proc [stage].[prcLoadSAB_ConsDirectLienWaiver] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsDirectLienWaiver t 
where exists 
	(select 1 from stage.SAB_ConsDirectLienWaiver s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsDirectLienWaiver with(tablock) as t
using (select * from blobTransInc.SAB_ConsDirectLienWaiver where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[CREATEDDATETIME]=s.[CREATEDDATETIME],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DocumentTemplate]=s.[DocumentTemplate],[LienWaiverId]=s.[LienWaiverId],[LotStructureElement]=s.[LotStructureElement],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[Status]=s.[Status],[StatusEnumID]=s.[StatusEnumID],[Type]=s.[Type],[TypeEnumID]=s.[TypeEnumID],[Vendor]=s.[Vendor]
when not matched then insert(
	[CREATEDDATETIME],[DataLakeModified_DateTime],[DocumentTemplate],[LienWaiverId],[LotStructureElement],[PARTITION],[RECID],[RECVERSION],[Status],[StatusEnumID],[Type],[TypeEnumID],[Vendor]
)
values (
[CREATEDDATETIME],[DataLakeModified_DateTime],[DocumentTemplate],[LienWaiverId],[LotStructureElement],[PARTITION],[RECID],[RECVERSION],[Status],[StatusEnumID],[Type],[TypeEnumID],[Vendor]
);

end
GO
