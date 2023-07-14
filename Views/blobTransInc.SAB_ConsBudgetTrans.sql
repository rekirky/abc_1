create   view [blobTransInc].[SAB_ConsBudgetTrans] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[AmountMST]=cast([AmountMST] as numeric(18,2))
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
 from stage.SAB_ConsBudgetTrans t
GO
