create   view [blobTransInc].[SAB_ConsLotStructureElementTranslation] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[FriendlyName]
,[LanguageId]
,[LotStructureElement]
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[PARTITION]
,[RECID]
,[RECVERSION]
,[SearchText]
 from stage.SAB_ConsLotStructureElementTranslation t
GO
