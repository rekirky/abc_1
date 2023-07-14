create   view [blobTransFull].[SAB_ConsSalesDocumentType] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Type]
 from blobFull.SAB_ConsSalesDocumentType t
GO
