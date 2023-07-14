create   view [blobTransInc].[SAB_ConsEnumerationAttributeValue] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[Attribute]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Inactive]
,[OrdinalNumber]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TextPrompt]=case when [TextPrompt]=1 then 'Yes' else 'No' end ,TextPromptFlag=cast([TextPrompt] as bit)
,[Value]
 from stage.SAB_ConsEnumerationAttributeValue t
GO
