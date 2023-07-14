create   view [blobTransInc].[SAB_ConsVendInvoiceLine] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[Amount]=cast([Amount] as numeric(18,2))
,[CertificateHold]=case when [CertificateHold]=1 then 'Yes' else 'No' end ,CertificateHoldFlag=cast([CertificateHold] as bit)
,[ChangeReason]
,[ClaimRequestJour]
,[CostCategory]
,[CSInsuranceReason]
,[CSRequest]
,[DataArea]
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DefaultDimension]
,[FinancialInstance]
,[LedgerDimension]
,[LineNumber]
,[LineType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsFinancialInstanceLedger' and e.EnumCode=t.[LineType]) ,LineTypeEnumID=[LineType]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ServiceEndDate]=cast(case when [ServiceEndDate] < cast('1901-01-01' as date) then null else [ServiceEndDate] end as date)
,[ServiceStartDate]=cast(case when [ServiceStartDate] < cast('1901-01-01' as date) then null else [ServiceStartDate] end as date)
,[TaxDirectionControl]=case when [TaxDirectionControl]=1 then 'Yes' else 'No' end ,TaxDirectionControlFlag=cast([TaxDirectionControl] as bit)
,[TaxGroup]
,[TaxItemGroup]
,[TradeType]
,[TransTxt]
,[VendInvoiceTable]
,[WorkOrderSummary]
,[WrapInsuranceDeduction]=cast([WrapInsuranceDeduction] as numeric(18,2))
,[WrapInsuranceType]
 from stage.SAB_ConsVendInvoiceLine t
GO
