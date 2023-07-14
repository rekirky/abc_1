create   view [blobTransInc].[HcmWorker] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[PARTITION]
,[Person]
,[PersonnelNumber]
,[RECID]
,[RECVERSION]
 from stage.HcmWorker t
GO
