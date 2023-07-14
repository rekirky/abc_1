create   proc [stage].[prcLoadSAB_ConsWorkOrder] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsWorkOrder t 
where exists 
	(select 1 from stage.SAB_ConsWorkOrder s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsWorkOrder with(tablock) as t
using (select * from blobTransInc.SAB_ConsWorkOrder where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[Canceled]=s.[Canceled],[CanceledFlag]=s.[CanceledFlag],[CashDiscCode]=s.[CashDiscCode],[ContractDetails]=s.[ContractDetails],[CREATEDBY]=s.[CREATEDBY],[CREATEDDATETIME]=s.[CREATEDDATETIME],[CSInsuranceReason]=s.[CSInsuranceReason],[CSRequest]=s.[CSRequest],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[Description]=s.[Description],[DocumentState]=s.[DocumentState],[DocumentStateEnumID]=s.[DocumentStateEnumID],[ElementFinancialInstance]=s.[ElementFinancialInstance],[Hidden]=s.[Hidden],[HiddenFlag]=s.[HiddenFlag],[InvoiceVendor]=s.[InvoiceVendor],[IsModified]=s.[IsModified],[Name]=s.[Name],[PARTITION]=s.[PARTITION],[PaymTermId]=s.[PaymTermId],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[Status]=s.[Status],[StatusEnumID]=s.[StatusEnumID],[Type]=s.[Type],[TypeEnumID]=s.[TypeEnumID],[UseClaimRequest]=s.[UseClaimRequest],[UseClaimRequestFlag]=s.[UseClaimRequestFlag],[Vendor]=s.[Vendor],[WorkOrderId]=s.[WorkOrderId]
when not matched then insert(
	[Canceled],[CanceledFlag],[CashDiscCode],[ContractDetails],[CREATEDBY],[CREATEDDATETIME],[CSInsuranceReason],[CSRequest],[DataLakeModified_DateTime],[Description],[DocumentState],[DocumentStateEnumID],[ElementFinancialInstance],[Hidden],[HiddenFlag],[InvoiceVendor],[IsModified],[Name],[PARTITION],[PaymTermId],[RECID],[RECVERSION],[Status],[StatusEnumID],[Type],[TypeEnumID],[UseClaimRequest],[UseClaimRequestFlag],[Vendor],[WorkOrderId]
)
values (
[Canceled],[CanceledFlag],[CashDiscCode],[ContractDetails],[CREATEDBY],[CREATEDDATETIME],[CSInsuranceReason],[CSRequest],[DataLakeModified_DateTime],[Description],[DocumentState],[DocumentStateEnumID],[ElementFinancialInstance],[Hidden],[HiddenFlag],[InvoiceVendor],[IsModified],[Name],[PARTITION],[PaymTermId],[RECID],[RECVERSION],[Status],[StatusEnumID],[Type],[TypeEnumID],[UseClaimRequest],[UseClaimRequestFlag],[Vendor],[WorkOrderId]
);

end
GO
