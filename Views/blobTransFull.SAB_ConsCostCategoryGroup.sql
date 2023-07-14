create   view [blobTransFull].[SAB_ConsCostCategoryGroup] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[GroupName]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsCostCategoryGroup t
GO
