create   view [blobTransFull].[SAB_ConsAttributeTranslation] as select 
LSN,[Attribute]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[FriendlyName]
,[HelpText]
,[Language]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsAttributeTranslation t
GO
