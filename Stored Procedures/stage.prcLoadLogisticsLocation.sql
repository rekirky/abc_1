create   proc [stage].[prcLoadLogisticsLocation] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.LogisticsLocation t 
where exists 
	(select 1 from stage.LogisticsLocation s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.LogisticsLocation with(tablock) as t
using (select * from blobTransInc.LogisticsLocation where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[CREATEDDATETIME]=s.[CREATEDDATETIME],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[Description]=s.[Description],[DunsNumberRecId]=s.[DunsNumberRecId],[IsPostalAddress]=s.[IsPostalAddress],[LocationId]=s.[LocationId],[MODIFIEDBY]=s.[MODIFIEDBY],[MODIFIEDDATETIME]=s.[MODIFIEDDATETIME],[ParentLocation]=s.[ParentLocation],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION]
when not matched then insert(
	[CREATEDDATETIME],[DataLakeModified_DateTime],[Description],[DunsNumberRecId],[IsPostalAddress],[LocationId],[MODIFIEDBY],[MODIFIEDDATETIME],[ParentLocation],[PARTITION],[RECID],[RECVERSION]
)
values (
[CREATEDDATETIME],[DataLakeModified_DateTime],[Description],[DunsNumberRecId],[IsPostalAddress],[LocationId],[MODIFIEDBY],[MODIFIEDDATETIME],[ParentLocation],[PARTITION],[RECID],[RECVERSION]
);

end
GO
