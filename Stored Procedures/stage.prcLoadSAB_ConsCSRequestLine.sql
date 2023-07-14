create   proc [stage].[prcLoadSAB_ConsCSRequestLine] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsCSRequestLine t 
where exists 
	(select 1 from stage.SAB_ConsCSRequestLine s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsCSRequestLine with(tablock) as t
using (select * from blobTransInc.SAB_ConsCSRequestLine where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[Category]=s.[Category],[CloseDate]=s.[CloseDate],[CloseReason]=s.[CloseReason],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[Diagnosis]=s.[Diagnosis],[Item]=s.[Item],[LineNumber]=s.[LineNumber],[Location]=s.[Location],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[Request]=s.[Request],[RequestOrientationTask]=s.[RequestOrientationTask],[RequestStatus]=s.[RequestStatus],[RequestStatusEnumID]=s.[RequestStatusEnumID],[RootCause]=s.[RootCause]
when not matched then insert(
	[Category],[CloseDate],[CloseReason],[DataLakeModified_DateTime],[Diagnosis],[Item],[LineNumber],[Location],[PARTITION],[RECID],[RECVERSION],[Request],[RequestOrientationTask],[RequestStatus],[RequestStatusEnumID],[RootCause]
)
values (
[Category],[CloseDate],[CloseReason],[DataLakeModified_DateTime],[Diagnosis],[Item],[LineNumber],[Location],[PARTITION],[RECID],[RECVERSION],[Request],[RequestOrientationTask],[RequestStatus],[RequestStatusEnumID],[RootCause]
);

end
GO
