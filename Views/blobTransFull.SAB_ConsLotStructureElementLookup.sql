create   view [blobTransFull].[SAB_ConsLotStructureElementLookup] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[ElementType]
,[ElementTypeParent]
,[LevelParent]
,[LotStructureElement]
,[LotStructureElementParent]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsLotStructureElementLookup t
GO
