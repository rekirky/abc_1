create   proc [stage].[prcLoadSAB_ConsVendInvoiceTrans] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsVendInvoiceTrans t 
where exists 
	(select 1 from stage.SAB_ConsVendInvoiceTrans s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsVendInvoiceTrans with(tablock) as t
using (select * from blobTransInc.SAB_ConsVendInvoiceTrans where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[CertificateHold]=s.[CertificateHold],[CertificateHoldFlag]=s.[CertificateHoldFlag],[CertificateOverrideReason]=s.[CertificateOverrideReason],[ChangeReason]=s.[ChangeReason],[ClaimRequestJour]=s.[ClaimRequestJour],[CostCategory]=s.[CostCategory],[CSInsuranceReason]=s.[CSInsuranceReason],[CSRequestId]=s.[CSRequestId],[DataArea]=s.[DataArea],[DataAreaId]=s.[DataAreaId],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DefaultDimension]=s.[DefaultDimension],[FinancialInstance]=s.[FinancialInstance],[InvoiceAmount]=s.[InvoiceAmount],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[TradeType]=s.[TradeType],[TransDate]=s.[TransDate],[TransTxt]=s.[TransTxt],[Voucher]=s.[Voucher],[WorkOrderId]=s.[WorkOrderId],[WorkOrderSummary]=s.[WorkOrderSummary],[WrapInsuranceDeduction]=s.[WrapInsuranceDeduction],[WrapInsuranceType]=s.[WrapInsuranceType]
when not matched then insert(
	[CertificateHold],[CertificateHoldFlag],[CertificateOverrideReason],[ChangeReason],[ClaimRequestJour],[CostCategory],[CSInsuranceReason],[CSRequestId],[DataArea],[DataAreaId],[DataLakeModified_DateTime],[DefaultDimension],[FinancialInstance],[InvoiceAmount],[PARTITION],[RECID],[RECVERSION],[TradeType],[TransDate],[TransTxt],[Voucher],[WorkOrderId],[WorkOrderSummary],[WrapInsuranceDeduction],[WrapInsuranceType]
)
values (
[CertificateHold],[CertificateHoldFlag],[CertificateOverrideReason],[ChangeReason],[ClaimRequestJour],[CostCategory],[CSInsuranceReason],[CSRequestId],[DataArea],[DataAreaId],[DataLakeModified_DateTime],[DefaultDimension],[FinancialInstance],[InvoiceAmount],[PARTITION],[RECID],[RECVERSION],[TradeType],[TransDate],[TransTxt],[Voucher],[WorkOrderId],[WorkOrderSummary],[WrapInsuranceDeduction],[WrapInsuranceType]
);

end
GO
