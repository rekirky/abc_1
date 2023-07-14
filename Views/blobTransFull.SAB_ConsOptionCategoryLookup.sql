create   view [blobTransFull].[SAB_ConsOptionCategoryLookup] as select 
LSN,[CategoryLevel]
,[CategoryLevelParent]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[OptionCategory]
,[OptionCategoryParent]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsOptionCategoryLookup t
GO
