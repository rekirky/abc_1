create   view [blobTransInc].[SAB_ConsOptionCategoryLookup] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[CategoryLevel]
,[CategoryLevelParent]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[OptionCategory]
,[OptionCategoryParent]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsOptionCategoryLookup t
GO
