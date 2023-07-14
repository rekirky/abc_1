create   proc [stage].[prcLoadSAB_ConsWorkOrderOptionDetails] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsWorkOrderOptionDetails t 
where exists 
	(select 1 from stage.SAB_ConsWorkOrderOptionDetails s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsWorkOrderOptionDetails with(tablock) as t
using (select * from blobTransInc.SAB_ConsWorkOrderOptionDetails where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[FinancialInstance]=s.[FinancialInstance],[Location]=s.[Location],[LocationGroup]=s.[LocationGroup],[OPTION_]=s.[OPTION_],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[SalesQty]=s.[SalesQty],[WorkOrder]=s.[WorkOrder],[WorkOrderVersion]=s.[WorkOrderVersion]
when not matched then insert(
	[DataLakeModified_DateTime],[FinancialInstance],[Location],[LocationGroup],[OPTION_],[PARTITION],[RECID],[RECVERSION],[SalesQty],[WorkOrder],[WorkOrderVersion]
)
values (
[DataLakeModified_DateTime],[FinancialInstance],[Location],[LocationGroup],[OPTION_],[PARTITION],[RECID],[RECVERSION],[SalesQty],[WorkOrder],[WorkOrderVersion]
);

end
GO
