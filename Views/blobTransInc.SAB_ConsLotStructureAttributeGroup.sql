create   view [blobTransInc].[SAB_ConsLotStructureAttributeGroup] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[ElementType]
,[GroupId]
,[LEVEL_]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsLotStructureAttributeGroup t
GO
