create   view [blobTransFull].[SAB_ConsOptionMaster] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[OPTION_]
,[OptionMasterId]
,[ParentOptionMaster]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Sorting]
 from blobFull.SAB_ConsOptionMaster t
GO
