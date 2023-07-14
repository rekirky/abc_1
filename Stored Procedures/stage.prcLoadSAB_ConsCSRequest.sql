create   proc [stage].[prcLoadSAB_ConsCSRequest] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsCSRequest t 
where exists 
	(select 1 from stage.SAB_ConsCSRequest s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsCSRequest with(tablock) as t
using (select * from blobTransInc.SAB_ConsCSRequest where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[CloseDate]=s.[CloseDate],[CloseReason]=s.[CloseReason],[ContactMethod]=s.[ContactMethod],[ContactParty]=s.[ContactParty],[CREATEDBY]=s.[CREATEDBY],[CREATEDDATETIME]=s.[CREATEDDATETIME],[CSRepresentativeWorker]=s.[CSRepresentativeWorker],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[Emergency]=s.[Emergency],[EmergencyFlag]=s.[EmergencyFlag],[FinancialInstance]=s.[FinancialInstance],[Lot]=s.[Lot],[OrientationScoreResult]=s.[OrientationScoreResult],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[RequestCategory]=s.[RequestCategory],[RequestDate]=s.[RequestDate],[RequestId]=s.[RequestId],[RequestSource]=s.[RequestSource],[RequestStatus]=s.[RequestStatus],[RequestStatusEnumID]=s.[RequestStatusEnumID],[SuspendDate]=s.[SuspendDate],[SuspendReason]=s.[SuspendReason],[Type]=s.[Type],[TypeEnumID]=s.[TypeEnumID]
when not matched then insert(
	[CloseDate],[CloseReason],[ContactMethod],[ContactParty],[CREATEDBY],[CREATEDDATETIME],[CSRepresentativeWorker],[DataLakeModified_DateTime],[Emergency],[EmergencyFlag],[FinancialInstance],[Lot],[OrientationScoreResult],[PARTITION],[RECID],[RECVERSION],[RequestCategory],[RequestDate],[RequestId],[RequestSource],[RequestStatus],[RequestStatusEnumID],[SuspendDate],[SuspendReason],[Type],[TypeEnumID]
)
values (
[CloseDate],[CloseReason],[ContactMethod],[ContactParty],[CREATEDBY],[CREATEDDATETIME],[CSRepresentativeWorker],[DataLakeModified_DateTime],[Emergency],[EmergencyFlag],[FinancialInstance],[Lot],[OrientationScoreResult],[PARTITION],[RECID],[RECVERSION],[RequestCategory],[RequestDate],[RequestId],[RequestSource],[RequestStatus],[RequestStatusEnumID],[SuspendDate],[SuspendReason],[Type],[TypeEnumID]
);

end
GO
