create   proc [stage].[prcLoadSAB_ConsSalesDesignVersion] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsSalesDesignVersion t 
where exists 
	(select 1 from stage.SAB_ConsSalesDesignVersion s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsSalesDesignVersion with(tablock) as t
using (select * from blobTransInc.SAB_ConsSalesDesignVersion where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[CREATEDDATETIME]=s.[CREATEDDATETIME],[CURRENT_]=s.[CURRENT_],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[SalesDesign]=s.[SalesDesign],[Version]=s.[Version]
when not matched then insert(
	[CREATEDDATETIME],[CURRENT_],[DataLakeModified_DateTime],[PARTITION],[RECID],[RECVERSION],[SalesDesign],[Version]
)
values (
[CREATEDDATETIME],[CURRENT_],[DataLakeModified_DateTime],[PARTITION],[RECID],[RECVERSION],[SalesDesign],[Version]
);

end
GO
