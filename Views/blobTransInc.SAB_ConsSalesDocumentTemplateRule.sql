create   view [blobTransInc].[SAB_ConsSalesDocumentTemplateRule] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[BuildingTypeId]
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
 from stage.SAB_ConsSalesDocumentTemplateRule t
GO
