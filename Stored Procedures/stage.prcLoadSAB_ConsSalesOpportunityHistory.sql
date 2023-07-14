create   proc [stage].[prcLoadSAB_ConsSalesOpportunityHistory] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsSalesOpportunityHistory t 
where exists 
	(select 1 from stage.SAB_ConsSalesOpportunityHistory s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsSalesOpportunityHistory with(tablock) as t
using (select * from blobTransInc.SAB_ConsSalesOpportunityHistory where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[AppointmentDuration]=s.[AppointmentDuration],[AppointmentType]=s.[AppointmentType],[CREATEDBY]=s.[CREATEDBY],[CREATEDDATETIME]=s.[CREATEDDATETIME],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[LineNumber]=s.[LineNumber],[LotStructureElement]=s.[LotStructureElement],[OpportunityParty]=s.[OpportunityParty],[Origin]=s.[Origin],[OriginEnumID]=s.[OriginEnumID],[PARTITION]=s.[PARTITION],[Purpose]=s.[Purpose],[Rating]=s.[Rating],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[SalesRepresentativeWorker]=s.[SalesRepresentativeWorker],[ScheduleStatus]=s.[ScheduleStatus],[ScheduleStatusEnumID]=s.[ScheduleStatusEnumID],[Source]=s.[Source],[TransDateTime]=s.[TransDateTime],[TRANSDATETIMETZID]=s.[TRANSDATETIMETZID],[Type]=s.[Type],[TypeEnumID]=s.[TypeEnumID]
when not matched then insert(
	[AppointmentDuration],[AppointmentType],[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[LineNumber],[LotStructureElement],[OpportunityParty],[Origin],[OriginEnumID],[PARTITION],[Purpose],[Rating],[RECID],[RECVERSION],[SalesRepresentativeWorker],[ScheduleStatus],[ScheduleStatusEnumID],[Source],[TransDateTime],[TRANSDATETIMETZID],[Type],[TypeEnumID]
)
values (
[AppointmentDuration],[AppointmentType],[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[LineNumber],[LotStructureElement],[OpportunityParty],[Origin],[OriginEnumID],[PARTITION],[Purpose],[Rating],[RECID],[RECVERSION],[SalesRepresentativeWorker],[ScheduleStatus],[ScheduleStatusEnumID],[Source],[TransDateTime],[TRANSDATETIMETZID],[Type],[TypeEnumID]
);

end
GO
