create   view [blobTransInc].[SAB_ConsVendInvoiceTable] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[ApprovalStatus]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsJournalApprovalStatus' and e.EnumCode=t.[ApprovalStatus]) ,ApprovalStatusEnumID=[ApprovalStatus]
,[Backcharge]=case when [Backcharge]=1 then 'Yes' else 'No' end ,BackchargeFlag=cast([Backcharge] as bit)
,[CREATEDBY]
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DocumentDate]=cast([DocumentDate] as date)
,[InclTax]
,[InvoiceAmount]=cast([InvoiceAmount] as numeric(18,2))
,[InvoiceId]
,[MODIFIEDBY]
,[OH_AIInvoice]
,[PARTITION]
,[PaymTermId]
,[Posted]=case when [Posted]=1 then 'Yes' else 'No' end ,PostedFlag=cast([Posted] as bit)
,[PostingProfile]
,[RECID]
,[RECVERSION]
,[Tax1099Amount]=cast([Tax1099Amount] as numeric(18,2))
,[Tax1099Fields]
,[Tax1099State]
,[Tax1099StateAmount]=cast([Tax1099StateAmount] as numeric(18,2))
,[TransDate]=cast([TransDate] as date)
,[TransTxt]
,[UtilityInvoiceEntryHold]=case when [UtilityInvoiceEntryHold]=1 then 'Yes' else 'No' end ,UtilityInvoiceEntryHoldFlag=cast([UtilityInvoiceEntryHold] as bit)
,[UtilityInvoiceEntryOverrideReason]
,[VendAccount]
,[Voucher]
 from stage.SAB_ConsVendInvoiceTable t
GO
