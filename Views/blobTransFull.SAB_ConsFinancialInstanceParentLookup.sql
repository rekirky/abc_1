create   view [blobTransFull].[SAB_ConsFinancialInstanceParentLookup] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FinancialInstance]
,[FinancialInstanceParent]
,[LevelParent]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsFinancialInstanceParentLookup t
GO
