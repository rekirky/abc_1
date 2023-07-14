create   view [blobTransFull].[SAB_ConsCSDiagnosis] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsCSDiagnosis t
GO
