create   view [blobTransFull].[SAB_ConsBudgetTrans] as select 
LSN,[AmountMST]=cast([AmountMST] as numeric(18,2))
,[Budget]
,[BudgetRevision]
,[CostCategory]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LateChange]=case when [LateChange]=1 then 'Yes' else 'No' end ,LateChangeFlag=cast([LateChange] as bit)
,[PARTITION]
,[RECID]
,[RECVERSION]
,[RevenueCategory]
,[Source]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsBudgetTransSource' and e.EnumCode=t.[Source]) ,SourceEnumID=[Source]
,[SourceReference]
,[TransDate]=cast([TransDate] as date)
 from blobFull.SAB_ConsBudgetTrans t
GO
