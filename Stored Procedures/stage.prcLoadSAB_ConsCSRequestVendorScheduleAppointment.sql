create   proc [stage].[prcLoadSAB_ConsCSRequestVendorScheduleAppointment] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsCSRequestVendorScheduleAppointment t 
where exists 
	(select 1 from stage.SAB_ConsCSRequestVendorScheduleAppointment s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsCSRequestVendorScheduleAppointment with(tablock) as t
using (select * from blobTransInc.SAB_ConsCSRequestVendorScheduleAppointment where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[CompleteDateTime]=s.[CompleteDateTime],[COMPLETEDATETIMETZID]=s.[COMPLETEDATETIMETZID],[CREATEDBY]=s.[CREATEDBY],[CREATEDDATETIME]=s.[CREATEDDATETIME],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[FromDateTime]=s.[FromDateTime],[FROMDATETIMETZID]=s.[FROMDATETIMETZID],[LineNumber]=s.[LineNumber],[MODIFIEDBY]=s.[MODIFIEDBY],[MODIFIEDDATETIME]=s.[MODIFIEDDATETIME],[PARTITION]=s.[PARTITION],[PendingStatusReason]=s.[PendingStatusReason],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[RequestVendorSchedule]=s.[RequestVendorSchedule],[ScheduleContact]=s.[ScheduleContact],[Status]=s.[Status],[StatusEnumID]=s.[StatusEnumID],[ToDateTime]=s.[ToDateTime],[TODATETIMETZID]=s.[TODATETIMETZID]
when not matched then insert(
	[CompleteDateTime],[COMPLETEDATETIMETZID],[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[FromDateTime],[FROMDATETIMETZID],[LineNumber],[MODIFIEDBY],[MODIFIEDDATETIME],[PARTITION],[PendingStatusReason],[RECID],[RECVERSION],[RequestVendorSchedule],[ScheduleContact],[Status],[StatusEnumID],[ToDateTime],[TODATETIMETZID]
)
values (
[CompleteDateTime],[COMPLETEDATETIMETZID],[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[FromDateTime],[FROMDATETIMETZID],[LineNumber],[MODIFIEDBY],[MODIFIEDDATETIME],[PARTITION],[PendingStatusReason],[RECID],[RECVERSION],[RequestVendorSchedule],[ScheduleContact],[Status],[StatusEnumID],[ToDateTime],[TODATETIMETZID]
);

end
GO
