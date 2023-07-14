create   proc [stage].[prcLoadSAB_ConsFieldPurchOrder] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsFieldPurchOrder t 
where exists 
	(select 1 from stage.SAB_ConsFieldPurchOrder s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsFieldPurchOrder with(tablock) as t
using (select * from blobTransInc.SAB_ConsFieldPurchOrder where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[ChangeReason]=s.[ChangeReason],[CREATEDBY]=s.[CREATEDBY],[CREATEDDATETIME]=s.[CREATEDDATETIME],[CSInsuranceReason]=s.[CSInsuranceReason],[CSRequest]=s.[CSRequest],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[EquipRentalStartDate]=s.[EquipRentalStartDate],[FieldPurchOrderId]=s.[FieldPurchOrderId],[FinancialInstance]=s.[FinancialInstance],[InternalExternal]=s.[InternalExternal],[InternalExternalEnumID]=s.[InternalExternalEnumID],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[Responsibility]=s.[Responsibility],[State]=s.[State],[StateEnumID]=s.[StateEnumID],[Type]=s.[Type],[TypeEnumID]=s.[TypeEnumID],[UseClaimRequest]=s.[UseClaimRequest],[UseClaimRequestFlag]=s.[UseClaimRequestFlag],[Vendor]=s.[Vendor],[WorkOrder]=s.[WorkOrder],[WorkOrderDescription]=s.[WorkOrderDescription]
when not matched then insert(
	[ChangeReason],[CREATEDBY],[CREATEDDATETIME],[CSInsuranceReason],[CSRequest],[DataLakeModified_DateTime],[EquipRentalStartDate],[FieldPurchOrderId],[FinancialInstance],[InternalExternal],[InternalExternalEnumID],[PARTITION],[RECID],[RECVERSION],[Responsibility],[State],[StateEnumID],[Type],[TypeEnumID],[UseClaimRequest],[UseClaimRequestFlag],[Vendor],[WorkOrder],[WorkOrderDescription]
)
values (
[ChangeReason],[CREATEDBY],[CREATEDDATETIME],[CSInsuranceReason],[CSRequest],[DataLakeModified_DateTime],[EquipRentalStartDate],[FieldPurchOrderId],[FinancialInstance],[InternalExternal],[InternalExternalEnumID],[PARTITION],[RECID],[RECVERSION],[Responsibility],[State],[StateEnumID],[Type],[TypeEnumID],[UseClaimRequest],[UseClaimRequestFlag],[Vendor],[WorkOrder],[WorkOrderDescription]
);

end
GO
