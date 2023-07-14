create   view [blobTransInc].[DimensionFinancialTag] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[CREATEDBY]
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
 from stage.DimensionFinancialTag t
GO
