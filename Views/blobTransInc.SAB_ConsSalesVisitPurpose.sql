create   view [blobTransInc].[SAB_ConsSalesVisitPurpose] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsSalesVisitPurpose t
GO
