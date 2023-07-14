create   view [blobTransInc].[SAB_ConsSalesCommissionBrokerType] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[CostCategory]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DocuSign]=case when [DocuSign]=1 then 'Yes' else 'No' end ,DocuSignFlag=cast([DocuSign] as bit)
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsSalesCommissionBrokerType t
GO
