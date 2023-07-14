create   proc [stage].[prcLoadSAB_ConsDocumentTemplate] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsDocumentTemplate t 
where exists 
	(select 1 from stage.SAB_ConsDocumentTemplate s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsDocumentTemplate with(tablock) as t
using (select * from blobTransInc.SAB_ConsDocumentTemplate where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DocumentType]=s.[DocumentType],[DocumentTypeEnumID]=s.[DocumentTypeEnumID],[DocuRefRecId]=s.[DocuRefRecId],[Name]=s.[Name],[PARTITION]=s.[PARTITION],[Priority]=s.[Priority],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION]
when not matched then insert(
	[DataLakeModified_DateTime],[DocumentType],[DocumentTypeEnumID],[DocuRefRecId],[Name],[PARTITION],[Priority],[RECID],[RECVERSION]
)
values (
[DataLakeModified_DateTime],[DocumentType],[DocumentTypeEnumID],[DocuRefRecId],[Name],[PARTITION],[Priority],[RECID],[RECVERSION]
);

end
GO
