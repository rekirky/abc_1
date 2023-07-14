create   view [blobTransInc].[SAB_ConsLotStructureElementLookup] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[ElementType]
,[ElementTypeParent]
,[LevelParent]
,[LotStructureElement]
,[LotStructureElementParent]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from stage.SAB_ConsLotStructureElementLookup t
GO
