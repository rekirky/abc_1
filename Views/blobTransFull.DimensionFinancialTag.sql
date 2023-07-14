create   view [blobTransFull].[DimensionFinancialTag] as select 
LSN,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[FinancialTagCategory]
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Value]
 from blobFull.DimensionFinancialTag t
GO
