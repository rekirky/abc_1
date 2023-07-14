create   proc [stage].[prcLoadSAB_ConsWorkOrderConfirmJour] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsWorkOrderConfirmJour t 
where exists 
	(select 1 from stage.SAB_ConsWorkOrderConfirmJour s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsWorkOrderConfirmJour with(tablock) as t
using (select * from blobTransInc.SAB_ConsWorkOrderConfirmJour where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[Acknowledged]=s.[Acknowledged],[AcknowledgedFlag]=s.[AcknowledgedFlag],[AcknowledgedByPerson]=s.[AcknowledgedByPerson],[CREATEDBY]=s.[CREATEDBY],[CREATEDDATETIME]=s.[CREATEDDATETIME],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[Type]=s.[Type],[TypeEnumID]=s.[TypeEnumID],[Vendor]=s.[Vendor],[WorkOrder]=s.[WorkOrder],[WorkOrderDate]=s.[WorkOrderDate],[WorkOrderDescription]=s.[WorkOrderDescription],[WorkOrderDocNum]=s.[WorkOrderDocNum],[WorkOrderVersion]=s.[WorkOrderVersion]
when not matched then insert(
	[Acknowledged],[AcknowledgedFlag],[AcknowledgedByPerson],[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[PARTITION],[RECID],[RECVERSION],[Type],[TypeEnumID],[Vendor],[WorkOrder],[WorkOrderDate],[WorkOrderDescription],[WorkOrderDocNum],[WorkOrderVersion]
)
values (
[Acknowledged],[AcknowledgedFlag],[AcknowledgedByPerson],[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[PARTITION],[RECID],[RECVERSION],[Type],[TypeEnumID],[Vendor],[WorkOrder],[WorkOrderDate],[WorkOrderDescription],[WorkOrderDocNum],[WorkOrderVersion]
);

end
GO
