create   view [blobTransInc].[SAB_ConsReleaseGroup] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ReleaseGroupId]
 from stage.SAB_ConsReleaseGroup t
GO
