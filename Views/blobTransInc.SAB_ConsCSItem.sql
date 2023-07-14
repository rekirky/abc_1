create   view [blobTransInc].[SAB_ConsCSItem] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[Category]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TarionDefaultItem]
 from stage.SAB_ConsCSItem t
GO
