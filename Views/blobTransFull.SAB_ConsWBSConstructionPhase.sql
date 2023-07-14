create   view [blobTransFull].[SAB_ConsWBSConstructionPhase] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[PARTITION]
,[Phase]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsWBSConstructionPhase t
GO
