create   view [blobTransFull].[HcmTitle] as select 
LSN,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TitleId]
 from blobFull.HcmTitle t
GO
