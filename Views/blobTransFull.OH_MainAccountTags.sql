create   view [blobTransFull].[OH_MainAccountTags] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[MainAccountNum]
,[MainAccountTag]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.OH_MainAccountTags t
GO
