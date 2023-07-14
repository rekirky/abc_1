create   view [blobTransFull].[SAB_ConsLotStructureElementTranslation] as select 
LSN,[CREATEDBY]
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
 from blobFull.SAB_ConsLotStructureElementTranslation t
GO
