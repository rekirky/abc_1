create   view [blobTransFull].[SAB_ConsVendInvoiceTrans] as select 
LSN,[CertificateHold]=case when [CertificateHold]=1 then 'Yes' else 'No' end ,CertificateHoldFlag=cast([CertificateHold] as bit)
,[CertificateOverrideReason]
,[ChangeReason]
,[ClaimRequestJour]
,[CostCategory]
,[CSInsuranceReason]
,[CSRequestId]
,[DataArea]
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DefaultDimension]
,[FinancialInstance]
,[InvoiceAmount]=cast([InvoiceAmount] as numeric(18,2))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TradeType]
,[TransDate]=cast([TransDate] as date)
,[TransTxt]
,[Voucher]
,[WorkOrderId]
,[WorkOrderSummary]
,[WrapInsuranceDeduction]=cast([WrapInsuranceDeduction] as numeric(18,2))
,[WrapInsuranceType]
 from blobFull.SAB_ConsVendInvoiceTrans t
GO
