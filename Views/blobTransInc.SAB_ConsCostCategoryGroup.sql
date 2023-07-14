create   view [blobTransInc].[SAB_ConsCostCategoryGroup] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[GroupName]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsCostCategoryGroup t
GO
