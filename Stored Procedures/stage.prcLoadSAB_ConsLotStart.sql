create   proc [stage].[prcLoadSAB_ConsLotStart] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsLotStart t 
where exists 
	(select 1 from stage.SAB_ConsLotStart s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsLotStart with(tablock) as t
using (select * from blobTransInc.SAB_ConsLotStart where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[ChangeReason]=s.[ChangeReason],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[Description]=s.[Description],[ForecastStartDate]=s.[ForecastStartDate],[LotStart]=s.[LotStart],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[ReleaseGroup]=s.[ReleaseGroup],[StartedDateTime]=s.[StartedDateTime],[STARTEDDATETIMETZID]=s.[STARTEDDATETIMETZID],[Status]=s.[Status],[StatusEnumID]=s.[StatusEnumID],[Type]=s.[Type],[TypeEnumID]=s.[TypeEnumID]
when not matched then insert(
	[ChangeReason],[DataLakeModified_DateTime],[Description],[ForecastStartDate],[LotStart],[PARTITION],[RECID],[RECVERSION],[ReleaseGroup],[StartedDateTime],[STARTEDDATETIMETZID],[Status],[StatusEnumID],[Type],[TypeEnumID]
)
values (
[ChangeReason],[DataLakeModified_DateTime],[Description],[ForecastStartDate],[LotStart],[PARTITION],[RECID],[RECVERSION],[ReleaseGroup],[StartedDateTime],[STARTEDDATETIMETZID],[Status],[StatusEnumID],[Type],[TypeEnumID]
);

end
GO
