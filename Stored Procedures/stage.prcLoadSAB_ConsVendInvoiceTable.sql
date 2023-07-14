create   proc [stage].[prcLoadSAB_ConsVendInvoiceTable] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsVendInvoiceTable t 
where exists 
	(select 1 from stage.SAB_ConsVendInvoiceTable s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsVendInvoiceTable with(tablock) as t
using (select * from blobTransInc.SAB_ConsVendInvoiceTable where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[ApprovalStatus]=s.[ApprovalStatus],[ApprovalStatusEnumID]=s.[ApprovalStatusEnumID],[Backcharge]=s.[Backcharge],[BackchargeFlag]=s.[BackchargeFlag],[CREATEDBY]=s.[CREATEDBY],[DataAreaId]=s.[DataAreaId],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[DocumentDate]=s.[DocumentDate],[InclTax]=s.[InclTax],[InvoiceAmount]=s.[InvoiceAmount],[InvoiceId]=s.[InvoiceId],[MODIFIEDBY]=s.[MODIFIEDBY],[OH_AIInvoice]=s.[OH_AIInvoice],[PARTITION]=s.[PARTITION],[PaymTermId]=s.[PaymTermId],[Posted]=s.[Posted],[PostedFlag]=s.[PostedFlag],[PostingProfile]=s.[PostingProfile],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[Tax1099Amount]=s.[Tax1099Amount],[Tax1099Fields]=s.[Tax1099Fields],[Tax1099State]=s.[Tax1099State],[Tax1099StateAmount]=s.[Tax1099StateAmount],[TransDate]=s.[TransDate],[TransTxt]=s.[TransTxt],[UtilityInvoiceEntryHold]=s.[UtilityInvoiceEntryHold],[UtilityInvoiceEntryHoldFlag]=s.[UtilityInvoiceEntryHoldFlag],[UtilityInvoiceEntryOverrideReason]=s.[UtilityInvoiceEntryOverrideReason],[VendAccount]=s.[VendAccount],[Voucher]=s.[Voucher]
when not matched then insert(
	[ApprovalStatus],[ApprovalStatusEnumID],[Backcharge],[BackchargeFlag],[CREATEDBY],[DataAreaId],[DataLakeModified_DateTime],[DocumentDate],[InclTax],[InvoiceAmount],[InvoiceId],[MODIFIEDBY],[OH_AIInvoice],[PARTITION],[PaymTermId],[Posted],[PostedFlag],[PostingProfile],[RECID],[RECVERSION],[Tax1099Amount],[Tax1099Fields],[Tax1099State],[Tax1099StateAmount],[TransDate],[TransTxt],[UtilityInvoiceEntryHold],[UtilityInvoiceEntryHoldFlag],[UtilityInvoiceEntryOverrideReason],[VendAccount],[Voucher]
)
values (
[ApprovalStatus],[ApprovalStatusEnumID],[Backcharge],[BackchargeFlag],[CREATEDBY],[DataAreaId],[DataLakeModified_DateTime],[DocumentDate],[InclTax],[InvoiceAmount],[InvoiceId],[MODIFIEDBY],[OH_AIInvoice],[PARTITION],[PaymTermId],[Posted],[PostedFlag],[PostingProfile],[RECID],[RECVERSION],[Tax1099Amount],[Tax1099Fields],[Tax1099State],[Tax1099StateAmount],[TransDate],[TransTxt],[UtilityInvoiceEntryHold],[UtilityInvoiceEntryHoldFlag],[UtilityInvoiceEntryOverrideReason],[VendAccount],[Voucher]
);

end
GO
