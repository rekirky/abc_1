create   proc [stage].[prcLoadSAB_ConsSalesOpportunityLot] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsSalesOpportunityLot t 
where exists 
	(select 1 from stage.SAB_ConsSalesOpportunityLot s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsSalesOpportunityLot with(tablock) as t
using (select * from blobTransInc.SAB_ConsSalesOpportunityLot where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[Lot]=s.[Lot],[Opportunity]=s.[Opportunity],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[Status]=s.[Status],[StatusEnumID]=s.[StatusEnumID]
when not matched then insert(
	[DataLakeModified_DateTime],[Lot],[Opportunity],[PARTITION],[RECID],[RECVERSION],[Status],[StatusEnumID]
)
values (
[DataLakeModified_DateTime],[Lot],[Opportunity],[PARTITION],[RECID],[RECVERSION],[Status],[StatusEnumID]
);

end
GO
