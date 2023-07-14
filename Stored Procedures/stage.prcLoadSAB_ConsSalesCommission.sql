create   proc [stage].[prcLoadSAB_ConsSalesCommission] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsSalesCommission t 
where exists 
	(select 1 from stage.SAB_ConsSalesCommission s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsSalesCommission with(tablock) as t
using (select * from blobTransInc.SAB_ConsSalesCommission where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[AdjustedAmount]=s.[AdjustedAmount],[Agent]=s.[Agent],[Amount]=s.[Amount],[Broker]=s.[Broker],[CalcAmount]=s.[CalcAmount],[CREATEDBY]=s.[CREATEDBY],[CREATEDDATETIME]=s.[CREATEDDATETIME],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[Lot]=s.[Lot],[MODIFIEDBY]=s.[MODIFIEDBY],[MODIFIEDDATETIME]=s.[MODIFIEDDATETIME],[Opportunity]=s.[Opportunity],[PARTITION]=s.[PARTITION],[PercentRule]=s.[PercentRule],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION]
when not matched then insert(
	[AdjustedAmount],[Agent],[Amount],[Broker],[CalcAmount],[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[Lot],[MODIFIEDBY],[MODIFIEDDATETIME],[Opportunity],[PARTITION],[PercentRule],[RECID],[RECVERSION]
)
values (
[AdjustedAmount],[Agent],[Amount],[Broker],[CalcAmount],[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[Lot],[MODIFIEDBY],[MODIFIEDDATETIME],[Opportunity],[PARTITION],[PercentRule],[RECID],[RECVERSION]
);

end
GO
