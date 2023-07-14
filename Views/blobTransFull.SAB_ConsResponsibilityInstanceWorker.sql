create   view [blobTransFull].[SAB_ConsResponsibilityInstanceWorker] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FinancialInstance]
,[IsPrimary]=case when [IsPrimary]=1 then 'Yes' else 'No' end ,IsPrimaryFlag=cast([IsPrimary] as bit)
,[LineNumber]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Responsibility]
,[Worker]
 from blobFull.SAB_ConsResponsibilityInstanceWorker t
GO
