create   proc [stage].[prcLoadSAB_ConsCSRequestWorkDetail] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsCSRequestWorkDetail t 
where exists 
	(select 1 from stage.SAB_ConsCSRequestWorkDetail s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsCSRequestWorkDetail with(tablock) as t
using (select * from blobTransInc.SAB_ConsCSRequestWorkDetail where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[Appointment]=s.[Appointment],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[FieldPurchOrder]=s.[FieldPurchOrder],[LineNumber]=s.[LineNumber],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[Request]=s.[Request],[Status]=s.[Status],[StatusEnumID]=s.[StatusEnumID],[Vendor]=s.[Vendor]
when not matched then insert(
	[Appointment],[DataLakeModified_DateTime],[FieldPurchOrder],[LineNumber],[PARTITION],[RECID],[RECVERSION],[Request],[Status],[StatusEnumID],[Vendor]
)
values (
[Appointment],[DataLakeModified_DateTime],[FieldPurchOrder],[LineNumber],[PARTITION],[RECID],[RECVERSION],[Request],[Status],[StatusEnumID],[Vendor]
);

end
GO
