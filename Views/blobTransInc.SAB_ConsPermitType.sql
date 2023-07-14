create   view [blobTransInc].[SAB_ConsPermitType] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[OPTION_]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsPermitType t
GO
