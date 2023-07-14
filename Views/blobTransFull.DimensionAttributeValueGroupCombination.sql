create   view [blobTransFull].[DimensionAttributeValueGroupCombination] as select 
LSN,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DimensionAttributeValueCombination]
,[DimensionAttributeValueGroup]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[MODIFIEDTRANSACTIONID]
,[Ordinal]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.DimensionAttributeValueGroupCombination t
GO
