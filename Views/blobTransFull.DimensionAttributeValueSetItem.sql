create   view [blobTransFull].[DimensionAttributeValueSetItem] as select 
LSN,[BackingRecordDataAreaId]
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DimensionAttributeValue]
,[DimensionAttributeValueSet]
,[DisplayValue]
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[MODIFIEDTRANSACTIONID]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.DimensionAttributeValueSetItem t
GO
