create   view [blobTransFull].[LogisticsLocation] as select 
LSN,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[DunsNumberRecId]
,[IsPostalAddress]
,[LocationId]
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[ParentLocation]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.LogisticsLocation t
GO
