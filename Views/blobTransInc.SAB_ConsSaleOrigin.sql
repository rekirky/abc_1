create   view [blobTransInc].[SAB_ConsSaleOrigin] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FINANCIALINSTANCE]
,[InstanceRelationType]
,[LotStructureElement]
,[Name]
,[PARTITION]
,[QUOTATIONJOUR]
,[RECID]
,[RECVERSION]
,[RELATIONTYPE]
 from stage.SAB_ConsSaleOrigin t
GO
