create   view [blobTransInc].[SAB_ConsOptionReplacement] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[OptionMaster]
,[OptionMasterReplacement]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsOptionReplacement t
GO
