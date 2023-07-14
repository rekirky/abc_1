create   view [blobTransInc].[SAB_ConsJournalEntry] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[ApprovalStatus]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsJournalApprovalStatus' and e.EnumCode=t.[ApprovalStatus]) ,ApprovalStatusEnumID=[ApprovalStatus]
,[CREATEDBY]
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[ForeignCompany]
,[ForeignJournalType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsJournalType' and e.EnumCode=t.[ForeignJournalType]) ,ForeignJournalTypeEnumID=[ForeignJournalType]
,[ForeignVoucher]
,[JournalEntryId]
,[JournalType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsJournalEntryType' and e.EnumCode=t.[JournalType]) ,JournalTypeEnumID=[JournalType]
,[MODIFIEDBY]
,[PARTITION]
,[Posted]=case when [Posted]=1 then 'Yes' else 'No' end ,PostedFlag=cast([Posted] as bit)
,[RECID]
,[RECVERSION]
,[ReverseDate]=cast([ReverseDate] as date)
,[ReverseEntry]
,[ReverseEntryRecId]
,[TransDate]=cast([TransDate] as date)
,[Voucher]
 from stage.SAB_ConsJournalEntry t
GO
