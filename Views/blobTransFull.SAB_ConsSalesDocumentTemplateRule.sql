create   view [blobTransFull].[SAB_ConsSalesDocumentTemplateRule] as select 
LSN,[BuildingTypeId]
,[ColorScheme]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DocumentType]
,[FacadeId]
,[LotStructureElement]
,[OfferType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsSalesOfferType' and e.EnumCode=t.[OfferType]) ,OfferTypeEnumID=[OfferType]
,[OptionCategory]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Template]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsSalesDesignType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
,[ValidFrom]=cast([ValidFrom] as date)
,[ValidTo]=cast([ValidTo] as date)
 from blobFull.SAB_ConsSalesDocumentTemplateRule t
GO
