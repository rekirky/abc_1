create   view [blobTransFull].[SAB_ConsSalesDocumentSection] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Section]
,[Sorting]
 from blobFull.SAB_ConsSalesDocumentSection t
GO
