create   proc [stage].[prcLoadSAB_ConsVendInvoiceLine] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsVendInvoiceLine t 
where exists 
	(select 1 from stage.SAB_ConsVendInvoiceLine s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsVendInvoiceLine with(tablock) as t
using (select * from blobTransInc.SAB_ConsVendInvoiceLine where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[Amount]=s.[Amount],[CertificateHold]=s.[CertificateHold],[CertificateHoldFlag]=s.[CertificateHoldFlag],[ChangeReason]=s.[ChangeReason],[ClaimRequestJour]=s.[ClaimRequestJour],[CostCategory]=s.[CostCategory],[CSInsuranceReason]=s.[CSInsuranceReason],[CSRequest]=s.[CSRequest],[DataArea]=s.[DataArea],[DataAreaId]=s.[DataAreaId],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DefaultDimension]=s.[DefaultDimension],[FinancialInstance]=s.[FinancialInstance],[LedgerDimension]=s.[LedgerDimension],[LineNumber]=s.[LineNumber],[LineType]=s.[LineType],[LineTypeEnumID]=s.[LineTypeEnumID],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[ServiceEndDate]=s.[ServiceEndDate],[ServiceStartDate]=s.[ServiceStartDate],[TaxDirectionControl]=s.[TaxDirectionControl],[TaxDirectionControlFlag]=s.[TaxDirectionControlFlag],[TaxGroup]=s.[TaxGroup],[TaxItemGroup]=s.[TaxItemGroup],[TradeType]=s.[TradeType],[TransTxt]=s.[TransTxt],[VendInvoiceTable]=s.[VendInvoiceTable],[WorkOrderSummary]=s.[WorkOrderSummary],[WrapInsuranceDeduction]=s.[WrapInsuranceDeduction],[WrapInsuranceType]=s.[WrapInsuranceType]
when not matched then insert(
	[Amount],[CertificateHold],[CertificateHoldFlag],[ChangeReason],[ClaimRequestJour],[CostCategory],[CSInsuranceReason],[CSRequest],[DataArea],[DataAreaId],[DataLakeModified_DateTime],[DefaultDimension],[FinancialInstance],[LedgerDimension],[LineNumber],[LineType],[LineTypeEnumID],[PARTITION],[RECID],[RECVERSION],[ServiceEndDate],[ServiceStartDate],[TaxDirectionControl],[TaxDirectionControlFlag],[TaxGroup],[TaxItemGroup],[TradeType],[TransTxt],[VendInvoiceTable],[WorkOrderSummary],[WrapInsuranceDeduction],[WrapInsuranceType]
)
values (
[Amount],[CertificateHold],[CertificateHoldFlag],[ChangeReason],[ClaimRequestJour],[CostCategory],[CSInsuranceReason],[CSRequest],[DataArea],[DataAreaId],[DataLakeModified_DateTime],[DefaultDimension],[FinancialInstance],[LedgerDimension],[LineNumber],[LineType],[LineTypeEnumID],[PARTITION],[RECID],[RECVERSION],[ServiceEndDate],[ServiceStartDate],[TaxDirectionControl],[TaxDirectionControlFlag],[TaxGroup],[TaxItemGroup],[TradeType],[TransTxt],[VendInvoiceTable],[WorkOrderSummary],[WrapInsuranceDeduction],[WrapInsuranceType]
);

end
GO
