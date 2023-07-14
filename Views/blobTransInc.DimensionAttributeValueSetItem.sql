create   view [blobTransInc].[DimensionAttributeValueSetItem] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[BackingRecordDataAreaId]
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
 from stage.DimensionAttributeValueSetItem t
GO
