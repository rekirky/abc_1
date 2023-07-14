create   proc [stage].[prcLoadSAB_ConsWorkOrderClaimRequestJour] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsWorkOrderClaimRequestJour t 
where exists 
	(select 1 from stage.SAB_ConsWorkOrderClaimRequestJour s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsWorkOrderClaimRequestJour with(tablock) as t
using (select * from blobTransInc.SAB_ConsWorkOrderClaimRequestJour where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[ClaimRequestDateTime]=s.[ClaimRequestDateTime],[CLAIMREQUESTDATETIMETZID]=s.[CLAIMREQUESTDATETIMETZID],[ClaimRequestId]=s.[ClaimRequestId],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DocumentDate]=s.[DocumentDate],[InvoiceId]=s.[InvoiceId],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[Responsibility]=s.[Responsibility],[Status]=s.[Status],[StatusEnumID]=s.[StatusEnumID],[TransDate]=s.[TransDate],[WorkOrder]=s.[WorkOrder]
when not matched then insert(
	[ClaimRequestDateTime],[CLAIMREQUESTDATETIMETZID],[ClaimRequestId],[DataLakeModified_DateTime],[DocumentDate],[InvoiceId],[PARTITION],[RECID],[RECVERSION],[Responsibility],[Status],[StatusEnumID],[TransDate],[WorkOrder]
)
values (
[ClaimRequestDateTime],[CLAIMREQUESTDATETIMETZID],[ClaimRequestId],[DataLakeModified_DateTime],[DocumentDate],[InvoiceId],[PARTITION],[RECID],[RECVERSION],[Responsibility],[Status],[StatusEnumID],[TransDate],[WorkOrder]
);

end
GO
