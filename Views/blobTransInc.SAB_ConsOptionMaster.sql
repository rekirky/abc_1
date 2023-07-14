create   view [blobTransInc].[SAB_ConsOptionMaster] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[OPTION_]
,[OptionMasterId]
,[ParentOptionMaster]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Sorting]
 from stage.SAB_ConsOptionMaster t
GO
