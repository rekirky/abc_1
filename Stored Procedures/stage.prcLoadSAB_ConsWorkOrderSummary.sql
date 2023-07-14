create   proc [stage].[prcLoadSAB_ConsWorkOrderSummary] as 
begin 
--This proc is automatically created by [etl].[prcMaterializeExternalData]

DELETE t from dbo.SAB_ConsWorkOrderSummary t 
where exists 
	(select 1 from stage.SAB_ConsWorkOrderSummary s 
	 where s.recid=t.recid 
		and (s.DML_Action='DELETE')
		and isnull(t.LSN,'')<isnull(s.Start_LSN,'')--delete the older record
	)

MERGE dbo.SAB_ConsWorkOrderSummary with(tablock) as t
using (select * from blobTransInc.SAB_ConsWorkOrderSummary where DML_Action<>'DELETE' and Instance=1) as s
on (s.recid=t.recid)
when matched then update set 
	[Amount]=s.[Amount],[ChangeAmount]=s.[ChangeAmount],[CostCategory]=s.[CostCategory],[CSRequestLine]=s.[CSRequestLine],[DataLakeModified_DateTime]=s.[DataLakeModified_DateTime],[FinancialInstance]=s.[FinancialInstance],[OH_InvoiceAmount]=s.[OH_InvoiceAmount],[OH_LastPaymentDate]=s.[OH_LastPaymentDate],[OH_PaidAmount]=s.[OH_PaidAmount],[OH_WOPaymentStatus]=s.[OH_WOPaymentStatus],[OH_WOPaymentStatusEnumID]=s.[OH_WOPaymentStatusEnumID],[PARTITION]=s.[PARTITION],[RECID]=s.[RECID],[RECVERSION]=s.[RECVERSION],[RemainAmount]=s.[RemainAmount],[Status]=s.[Status],[StatusEnumID]=s.[StatusEnumID],[TaxGroup]=s.[TaxGroup],[TaxItemGroup]=s.[TaxItemGroup],[TradeType]=s.[TradeType],[VENDSTATUS]=s.[VENDSTATUS],[VENDSTATUSEnumID]=s.[VENDSTATUSEnumID],[WorkOrder]=s.[WorkOrder]
when not matched then insert(
	[Amount],[ChangeAmount],[CostCategory],[CSRequestLine],[DataLakeModified_DateTime],[FinancialInstance],[OH_InvoiceAmount],[OH_LastPaymentDate],[OH_PaidAmount],[OH_WOPaymentStatus],[OH_WOPaymentStatusEnumID],[PARTITION],[RECID],[RECVERSION],[RemainAmount],[Status],[StatusEnumID],[TaxGroup],[TaxItemGroup],[TradeType],[VENDSTATUS],[VENDSTATUSEnumID],[WorkOrder]
)
values (
[Amount],[ChangeAmount],[CostCategory],[CSRequestLine],[DataLakeModified_DateTime],[FinancialInstance],[OH_InvoiceAmount],[OH_LastPaymentDate],[OH_PaidAmount],[OH_WOPaymentStatus],[OH_WOPaymentStatusEnumID],[PARTITION],[RECID],[RECVERSION],[RemainAmount],[Status],[StatusEnumID],[TaxGroup],[TaxItemGroup],[TradeType],[VENDSTATUS],[VENDSTATUSEnumID],[WorkOrder]
);

end
GO
