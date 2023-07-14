create   view [blobTransInc].[SAB_ConsBuildingTypeFacadeStatus] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[BiddingInactive]=case when [BiddingInactive]=1 then 'Yes' else 'No' end ,BiddingInactiveFlag=cast([BiddingInactive] as bit)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[MarginAnalysisInactive]=case when [MarginAnalysisInactive]=1 then 'Yes' else 'No' end ,MarginAnalysisInactiveFlag=cast([MarginAnalysisInactive] as bit)
,[PARTITION]
,[RECID]
,[RECVERSION]
,[SalesInactive]=case when [SalesInactive]=1 then 'Yes' else 'No' end ,SalesInactiveFlag=cast([SalesInactive] as bit)
,[SetupInactive]=case when [SetupInactive]=1 then 'Yes' else 'No' end ,SetupInactiveFlag=cast([SetupInactive] as bit)
,[Status]
 from stage.SAB_ConsBuildingTypeFacadeStatus t
GO
