create   view [blobTransFull].[HcmWorker] as select 
LSN,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[PARTITION]
,[Person]
,[PersonnelNumber]
,[RECID]
,[RECVERSION]
 from blobFull.HcmWorker t
GO
