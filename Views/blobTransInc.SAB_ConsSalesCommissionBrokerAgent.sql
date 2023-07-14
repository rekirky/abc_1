create   view [blobTransInc].[SAB_ConsSalesCommissionBrokerAgent] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[Broker]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LicenseNumber]
,[PARTITION]
,[Party]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsSalesCommissionBrokerAgent t
GO
