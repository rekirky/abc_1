create   view [blobTransInc].[MainAccountCategory] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[AccountCategory]
,[AccountCategoryDisplayOrder]
,[AccountCategoryRef]
,[AccountType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='DimensionLedgerAccCategoryAccountType' and e.EnumCode=t.[AccountType]) ,AccountTypeEnumID=[AccountType]
,[Closed]=case when [Closed]=1 then 'Yes' else 'No' end ,ClosedFlag=cast([Closed] as bit)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.MainAccountCategory t
GO
