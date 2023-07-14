create   view [blobTransInc].[SAB_ConsLotLotGroup] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Lot]
,[LotGroup]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsLotLotGroup t
GO
