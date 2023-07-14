create   view [blobTransInc].[DimensionAttributeValueGroupCombination] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[CREATEDBY]
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
 from stage.DimensionAttributeValueGroupCombination t
GO
