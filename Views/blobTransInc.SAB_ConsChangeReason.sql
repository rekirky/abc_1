create   view [blobTransInc].[SAB_ConsChangeReason] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[ChangeReason]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[OH_ConsResponsibilityRecId]
,[OH_requireBudgetOwner]=case when [OH_requireBudgetOwner]=1 then 'Yes' else 'No' end ,OH_requireBudgetOwnerFlag=cast([OH_requireBudgetOwner] as bit)
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsChangeReason t
GO
