create   view [blobTransInc].[OH_LotOwnershipTypes] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[OH_LotOwnershipType]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.OH_LotOwnershipTypes t
GO
