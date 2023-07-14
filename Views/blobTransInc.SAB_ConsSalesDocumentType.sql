create   view [blobTransInc].[SAB_ConsSalesDocumentType] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Type]
 from stage.SAB_ConsSalesDocumentType t
GO
