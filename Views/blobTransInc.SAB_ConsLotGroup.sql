create   view [blobTransInc].[SAB_ConsLotGroup] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LotGroup]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsLotGroup t
GO
