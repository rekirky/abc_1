create   proc [stage].[prcLoadSAB_ConsWBSActivities] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsWBSActivities t 
where exists 
	(select 1 from stage.SAB_ConsWBSActivities s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsWBSActivities with(tablock) as t
using (select * from blobTransInc.SAB_ConsWBSActivities where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[ActivityNumber]=s.[ActivityNumber],[ActualEndDate]=s.[ActualEndDate],[BudgetEndDate]=s.[BudgetEndDate],[BudgetStartDate]=s.[BudgetStartDate],[Closed]=s.[Closed],[ClosedFlag]=s.[ClosedFlag],[ConstructionPause]=s.[ConstructionPause],[ConstructionPauseFlag]=s.[ConstructionPauseFlag],[ConstructionPhase]=s.[ConstructionPhase],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DoneByWorker]=s.[DoneByWorker],[Duration]=s.[Duration],[DurationOrig]=s.[DurationOrig],[FinancialInstance]=s.[FinancialInstance],[LatestStartDate]=s.[LatestStartDate],[LockState]=s.[LockState],[LockStateEnumID]=s.[LockStateEnumID],[Milestone]=s.[Milestone],[MilestoneFlag]=s.[MilestoneFlag],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[ReleaseGroup]=s.[ReleaseGroup],[ReportingActivity]=s.[ReportingActivity],[Responsibility]=s.[Responsibility],[SchedEndDate]=s.[SchedEndDate],[SchedStartDate]=s.[SchedStartDate],[SchedStartDateOrig]=s.[SchedStartDateOrig],[Type]=s.[Type],[TypeEnumID]=s.[TypeEnumID]
when not matched then insert(
	[ActivityNumber],[ActualEndDate],[BudgetEndDate],[BudgetStartDate],[Closed],[ClosedFlag],[ConstructionPause],[ConstructionPauseFlag],[ConstructionPhase],[DataLakeModified_DateTime],[DoneByWorker],[Duration],[DurationOrig],[FinancialInstance],[LatestStartDate],[LockState],[LockStateEnumID],[Milestone],[MilestoneFlag],[PARTITION],[RECID],[RECVERSION],[ReleaseGroup],[ReportingActivity],[Responsibility],[SchedEndDate],[SchedStartDate],[SchedStartDateOrig],[Type],[TypeEnumID]
)
values (
[ActivityNumber],[ActualEndDate],[BudgetEndDate],[BudgetStartDate],[Closed],[ClosedFlag],[ConstructionPause],[ConstructionPauseFlag],[ConstructionPhase],[DataLakeModified_DateTime],[DoneByWorker],[Duration],[DurationOrig],[FinancialInstance],[LatestStartDate],[LockState],[LockStateEnumID],[Milestone],[MilestoneFlag],[PARTITION],[RECID],[RECVERSION],[ReleaseGroup],[ReportingActivity],[Responsibility],[SchedEndDate],[SchedStartDate],[SchedStartDateOrig],[Type],[TypeEnumID]
);

end
GO
