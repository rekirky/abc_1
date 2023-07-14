create   proc [stage].[prcLoadSAB_ConsResponsibilityInstanceWorker] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsResponsibilityInstanceWorker t 
where exists 
	(select 1 from stage.SAB_ConsResponsibilityInstanceWorker s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsResponsibilityInstanceWorker with(tablock) as t
using (select * from blobTransInc.SAB_ConsResponsibilityInstanceWorker where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[FinancialInstance]=s.[FinancialInstance],[IsPrimary]=s.[IsPrimary],[IsPrimaryFlag]=s.[IsPrimaryFlag],[LineNumber]=s.[LineNumber],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[Responsibility]=s.[Responsibility],[Worker]=s.[Worker]
when not matched then insert(
	[DataLakeModified_DateTime],[FinancialInstance],[IsPrimary],[IsPrimaryFlag],[LineNumber],[PARTITION],[RECID],[RECVERSION],[Responsibility],[Worker]
)
values (
[DataLakeModified_DateTime],[FinancialInstance],[IsPrimary],[IsPrimaryFlag],[LineNumber],[PARTITION],[RECID],[RECVERSION],[Responsibility],[Worker]
);

end
GO
