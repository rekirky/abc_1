create   view [blobTransInc].[SAB_ConsVendCertificateType] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[CHASCertificateName]
,[CHASCertificateType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsCHASCertificateType' and e.EnumCode=t.[CHASCertificateType]) ,CHASCertificateTypeEnumID=[CHASCertificateType]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DisplayInCreate]=case when [DisplayInCreate]=1 then 'Yes' else 'No' end ,DisplayInCreateFlag=cast([DisplayInCreate] as bit)
,[InvoiceBlocked]=case when [InvoiceBlocked]=1 then 'Yes' else 'No' end ,InvoiceBlockedFlag=cast([InvoiceBlocked] as bit)
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[SendReminder]=case when [SendReminder]=1 then 'Yes' else 'No' end ,SendReminderFlag=cast([SendReminder] as bit)
 from stage.SAB_ConsVendCertificateType t
GO
