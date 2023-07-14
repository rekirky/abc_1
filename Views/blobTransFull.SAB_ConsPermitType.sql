create   view [blobTransFull].[SAB_ConsPermitType] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[OPTION_]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsPermitType t
GO
