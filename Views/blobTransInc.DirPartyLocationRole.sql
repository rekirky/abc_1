create   view [blobTransInc].[DirPartyLocationRole] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[LocationRole]
,[PARTITION]
,[PartyLocation]
,[RECID]
,[RECVERSION]
 from stage.DirPartyLocationRole t
GO
