create   view [blobTransFull].[SAB_ConsOptionReplacement] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[OptionMaster]
,[OptionMasterReplacement]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsOptionReplacement t
GO
