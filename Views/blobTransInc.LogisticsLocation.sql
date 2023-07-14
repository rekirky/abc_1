create   view [blobTransInc].[LogisticsLocation] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
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
 from stage.LogisticsLocation t
GO
