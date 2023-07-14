create   view [blobTransInc].[TransactTxt] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LanguageId]
,[OH_Notes]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TransactionType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='LedgerTransTxt' and e.EnumCode=t.[TransactionType]) ,TransactionTypeEnumID=[TransactionType]
,[Txt]
 from stage.TransactTxt t
GO
