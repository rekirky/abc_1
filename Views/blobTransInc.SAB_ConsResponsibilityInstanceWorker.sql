create   view [blobTransInc].[SAB_ConsResponsibilityInstanceWorker] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FinancialInstance]
,[IsPrimary]=case when [IsPrimary]=1 then 'Yes' else 'No' end ,IsPrimaryFlag=cast([IsPrimary] as bit)
,[LineNumber]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Responsibility]
,[Worker]
 from stage.SAB_ConsResponsibilityInstanceWorker t
GO
