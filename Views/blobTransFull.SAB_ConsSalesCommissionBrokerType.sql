create   view [blobTransFull].[SAB_ConsSalesCommissionBrokerType] as select 
LSN,[CostCategory]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DocuSign]=case when [DocuSign]=1 then 'Yes' else 'No' end ,DocuSignFlag=cast([DocuSign] as bit)
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsSalesCommissionBrokerType t
GO
