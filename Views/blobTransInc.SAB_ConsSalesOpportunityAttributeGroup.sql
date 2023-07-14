create   view [blobTransInc].[SAB_ConsSalesOpportunityAttributeGroup] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[KEY_]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsSalesOpportunityAttributeGroup t
GO
