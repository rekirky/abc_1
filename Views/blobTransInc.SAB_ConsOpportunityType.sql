create   view [blobTransInc].[SAB_ConsOpportunityType] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[OpportunityType]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsOpportunityType t
GO
