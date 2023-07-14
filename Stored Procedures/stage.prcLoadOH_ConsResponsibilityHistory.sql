create   proc [stage].[prcLoadOH_ConsResponsibilityHistory] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.OH_ConsResponsibilityHistory t 
where exists 
	(select 1 from stage.OH_ConsResponsibilityHistory s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.OH_ConsResponsibilityHistory with(tablock) as t
using (select * from blobTransInc.OH_ConsResponsibilityHistory where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[AddedDate]=s.[AddedDate],[ADDEDDATETZID]=s.[ADDEDDATETZID],[CREATEDBY]=s.[CREATEDBY],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[FinancialInstance]=s.[FinancialInstance],[IsPrimary]=s.[IsPrimary],[IsPrimaryFlag]=s.[IsPrimaryFlag],[MODIFIEDBY]=s.[MODIFIEDBY],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[RefRecId]=s.[RefRecId],[RemovedDate]=s.[RemovedDate],[REMOVEDDATETZID]=s.[REMOVEDDATETZID],[Responsibility]=s.[Responsibility],[SYSROWVERSIONNUMBER]=s.[SYSROWVERSIONNUMBER],[Worker]=s.[Worker]
when not matched then insert(
	[AddedDate],[ADDEDDATETZID],[CREATEDBY],[DataLakeModified_DateTime],[FinancialInstance],[IsPrimary],[IsPrimaryFlag],[MODIFIEDBY],[PARTITION],[RECID],[RECVERSION],[RefRecId],[RemovedDate],[REMOVEDDATETZID],[Responsibility],[SYSROWVERSIONNUMBER],[Worker]
)
values (
[AddedDate],[ADDEDDATETZID],[CREATEDBY],[DataLakeModified_DateTime],[FinancialInstance],[IsPrimary],[IsPrimaryFlag],[MODIFIEDBY],[PARTITION],[RECID],[RECVERSION],[RefRecId],[RemovedDate],[REMOVEDDATETZID],[Responsibility],[SYSROWVERSIONNUMBER],[Worker]
);

end
GO
