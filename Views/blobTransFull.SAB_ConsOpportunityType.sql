create   view [blobTransFull].[SAB_ConsOpportunityType] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[OpportunityType]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsOpportunityType t
GO
