create   view [blobTransFull].[SAB_ConsCustInvoiceTable] as select 
LSN,[ApprovalStatus]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsJournalApprovalStatus' and e.EnumCode=t.[ApprovalStatus]) ,ApprovalStatusEnumID=[ApprovalStatus]
,[CREATEDBY]
,[CustAccount]
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DefaultDimension]
,[DueDate]=cast([DueDate] as date)
,[InclTax]
,[InvoiceAmount]=cast([InvoiceAmount] as numeric(18,2))
,[InvoiceId]
,[MODIFIEDBY]
,[PARTITION]
,[PaymTermId]
,[Posted]=case when [Posted]=1 then 'Yes' else 'No' end ,PostedFlag=cast([Posted] as bit)
,[PostingProfile]
,[RECID]
,[RECVERSION]
,[TransDate]=cast([TransDate] as date)
,[TransTxt]
,[Voucher]
 from blobFull.SAB_ConsCustInvoiceTable t
GO
