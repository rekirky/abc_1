create   view [blobTransFull].[SAB_ConsLotStructureAttributeGroup] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[ElementType]
,[GroupId]
,[LEVEL_]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsLotStructureAttributeGroup t
GO
