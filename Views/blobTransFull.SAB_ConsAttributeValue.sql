create   view [blobTransFull].[SAB_ConsAttributeValue] as select 
LSN,[Attribute]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[InstanceValue]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Value]
 from blobFull.SAB_ConsAttributeValue t
GO
