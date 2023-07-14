create   view [blobTransInc].[SAB_ConsFinancialInstanceParentLookup] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FinancialInstance]
,[FinancialInstanceParent]
,[LevelParent]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsFinancialInstanceParentLookup t
GO
