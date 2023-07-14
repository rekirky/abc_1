create   view [blobTransFull].[SAB_ConsWorkOrderSummary] as select 
LSN,[Amount]=cast([Amount] as numeric(18,2))
,[ChangeAmount]=cast([ChangeAmount] as numeric(18,2))
,[CostCategory]
,[CSRequestLine]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FinancialInstance]
,[OH_InvoiceAmount]=cast([OH_InvoiceAmount] as numeric(18,2))
,[OH_LastPaymentDate]=cast([OH_LastPaymentDate] as date)
,[OH_PaidAmount]=cast([OH_PaidAmount] as numeric(18,2))
,[OH_WOPaymentStatus]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='OH_WOPaymentStatus' and e.EnumCode=t.[OH_WOPaymentStatus]) ,OH_WOPaymentStatusEnumID=[OH_WOPaymentStatus]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[RemainAmount]=cast([RemainAmount] as numeric(18,2))
,[Status]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsWorkOrderStatus' and e.EnumCode=t.[Status]) ,StatusEnumID=[Status]
,[TaxGroup]
,[TaxItemGroup]
,[TradeType]
,[VENDSTATUS]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsWorkOrderVendStatus' and e.EnumCode=t.[VENDSTATUS]) ,VENDSTATUSEnumID=[VENDSTATUS]
,[WorkOrder]
 from stage.SAB_ConsWorkOrderSummary t
GO
