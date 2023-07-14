create   view [blobTransFull].[SAB_ConsSalesCommissionBroker] as select 
LSN,[BrokerType]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LicenseNumber]
,[PARTITION]
,[Party]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsSalesCommissionBroker t
GO
