create   view [blobTransFull].[SAB_ConsSalesOpportunityAttributeGroup] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[KEY_]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsSalesOpportunityAttributeGroup t
GO
