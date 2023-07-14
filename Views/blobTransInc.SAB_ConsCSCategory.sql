create   view [blobTransInc].[SAB_ConsCSCategory] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[TarionItem]
 from stage.SAB_ConsCSCategory t
GO
