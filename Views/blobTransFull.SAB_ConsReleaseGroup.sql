create   view [blobTransFull].[SAB_ConsReleaseGroup] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ReleaseGroupId]
 from blobFull.SAB_ConsReleaseGroup t
GO
