create   view [blobTransInc].[SAB_ConsAttributeTranslation] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[Attribute]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[FriendlyName]
,[HelpText]
,[Language]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsAttributeTranslation t
GO
