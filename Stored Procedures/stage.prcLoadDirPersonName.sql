create   proc [stage].[prcLoadDirPersonName] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.DirPersonName t 
where exists 
	(select 1 from stage.DirPersonName s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.DirPersonName with(tablock) as t
using (select * from blobTransInc.DirPersonName where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[CREATEDBY]=s.[CREATEDBY],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[FirstName]=s.[FirstName],[LastName]=s.[LastName],[LastNamePrefix]=s.[LastNamePrefix],[MiddleName]=s.[MiddleName],[MODIFIEDBY]=s.[MODIFIEDBY],[PARTITION]=s.[PARTITION],[Person]=s.[Person],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[ValidFrom]=s.[ValidFrom],[VALIDFROMTZID]=s.[VALIDFROMTZID],[ValidTo]=s.[ValidTo],[VALIDTOTZID]=s.[VALIDTOTZID]
when not matched then insert(
	[CREATEDBY],[DataLakeModified_DateTime],[FirstName],[LastName],[LastNamePrefix],[MiddleName],[MODIFIEDBY],[PARTITION],[Person],[RECID],[RECVERSION],[ValidFrom],[VALIDFROMTZID],[ValidTo],[VALIDTOTZID]
)
values (
[CREATEDBY],[DataLakeModified_DateTime],[FirstName],[LastName],[LastNamePrefix],[MiddleName],[MODIFIEDBY],[PARTITION],[Person],[RECID],[RECVERSION],[ValidFrom],[VALIDFROMTZID],[ValidTo],[VALIDTOTZID]
);

end
GO
