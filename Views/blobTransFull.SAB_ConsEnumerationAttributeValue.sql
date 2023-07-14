create   view [blobTransFull].[SAB_ConsEnumerationAttributeValue] as select 
LSN,[Attribute]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Inactive]
,[OrdinalNumber]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TextPrompt]=case when [TextPrompt]=1 then 'Yes' else 'No' end ,TextPromptFlag=cast([TextPrompt] as bit)
,[Value]
 from blobFull.SAB_ConsEnumerationAttributeValue t
GO
