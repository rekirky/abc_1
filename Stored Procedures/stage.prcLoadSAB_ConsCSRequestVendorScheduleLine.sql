create   proc [stage].[prcLoadSAB_ConsCSRequestVendorScheduleLine] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsCSRequestVendorScheduleLine t 
where exists 
	(select 1 from stage.SAB_ConsCSRequestVendorScheduleLine s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsCSRequestVendorScheduleLine with(tablock) as t
using (select * from blobTransInc.SAB_ConsCSRequestVendorScheduleLine where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[LineNumber]=s.[LineNumber],[Obligation]=s.[Obligation],[ObligationEnumID]=s.[ObligationEnumID],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[RequestLine]=s.[RequestLine],[RequestVendorSchedule]=s.[RequestVendorSchedule]
when not matched then insert(
	[DataLakeModified_DateTime],[LineNumber],[Obligation],[ObligationEnumID],[PARTITION],[RECID],[RECVERSION],[RequestLine],[RequestVendorSchedule]
)
values (
[DataLakeModified_DateTime],[LineNumber],[Obligation],[ObligationEnumID],[PARTITION],[RECID],[RECVERSION],[RequestLine],[RequestVendorSchedule]
);

end
GO
