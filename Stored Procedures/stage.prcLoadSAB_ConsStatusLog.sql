create   proc [stage].[prcLoadSAB_ConsStatusLog] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsStatusLog t 
where exists 
	(select 1 from stage.SAB_ConsStatusLog s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsStatusLog with(tablock) as t
using (select * from blobTransInc.SAB_ConsStatusLog where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[CREATEDBY]=s.[CREATEDBY],[CREATEDDATETIME]=s.[CREATEDDATETIME],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[FinancialInstance]=s.[FinancialInstance],[LineNumber]=s.[LineNumber],[Opportunity]=s.[Opportunity],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[TransDate]=s.[TransDate],[Type]=s.[Type],[TypeEnumID]=s.[TypeEnumID],[Value]=s.[Value]
when not matched then insert(
	[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[FinancialInstance],[LineNumber],[Opportunity],[PARTITION],[RECID],[RECVERSION],[TransDate],[Type],[TypeEnumID],[Value]
)
values (
[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[FinancialInstance],[LineNumber],[Opportunity],[PARTITION],[RECID],[RECVERSION],[TransDate],[Type],[TypeEnumID],[Value]
);

end
GO
