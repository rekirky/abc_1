create   view [blobTransInc].[SAB_ConsSalesDocumentSection] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Section]
,[Sorting]
 from stage.SAB_ConsSalesDocumentSection t
GO
