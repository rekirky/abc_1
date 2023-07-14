create   view [blobTransInc].[SAB_ConsSalesCommissionBroker] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[BrokerType]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LicenseNumber]
,[PARTITION]
,[Party]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsSalesCommissionBroker t
GO
