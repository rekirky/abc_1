create   proc [stage].[prcLoadSAB_ConsPurchOkToPayTrans] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsPurchOkToPayTrans t 
where exists 
	(select 1 from stage.SAB_ConsPurchOkToPayTrans s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsPurchOkToPayTrans with(tablock) as t
using (select * from blobTransInc.SAB_ConsPurchOkToPayTrans where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[Amount]=s.[Amount],[Approved]=s.[Approved],[ApprovedFlag]=s.[ApprovedFlag],[ApprovedBy]=s.[ApprovedBy],[ClosedDate]=s.[ClosedDate],[CREATEDBY]=s.[CREATEDBY],[CREATEDDATETIME]=s.[CREATEDDATETIME],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DocumentDate]=s.[DocumentDate],[HasError]=s.[HasError],[HasErrorFlag]=s.[HasErrorFlag],[PARTITION]=s.[PARTITION],[Posted]=s.[Posted],[PostedFlag]=s.[PostedFlag],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[TransDate]=s.[TransDate],[WorkOrderSummary]=s.[WorkOrderSummary],[WrapInsuranceDeduction]=s.[WrapInsuranceDeduction],[WrapInsuranceType]=s.[WrapInsuranceType]
when not matched then insert(
	[Amount],[Approved],[ApprovedFlag],[ApprovedBy],[ClosedDate],[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[DocumentDate],[HasError],[HasErrorFlag],[PARTITION],[Posted],[PostedFlag],[RECID],[RECVERSION],[TransDate],[WorkOrderSummary],[WrapInsuranceDeduction],[WrapInsuranceType]
)
values (
[Amount],[Approved],[ApprovedFlag],[ApprovedBy],[ClosedDate],[CREATEDBY],[CREATEDDATETIME],[DataLakeModified_DateTime],[DocumentDate],[HasError],[HasErrorFlag],[PARTITION],[Posted],[PostedFlag],[RECID],[RECVERSION],[TransDate],[WorkOrderSummary],[WrapInsuranceDeduction],[WrapInsuranceType]
);

end
GO
