create   view [blobTransFull].[SAB_ConsSalesCommissionBrokerAgent] as select 
LSN,[Broker]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LicenseNumber]
,[PARTITION]
,[Party]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsSalesCommissionBrokerAgent t
GO
