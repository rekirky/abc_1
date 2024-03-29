create   view [blobTransFull].[DimensionAttribute] as select 
LSN,[BackingEntityKeyFieldId]
,[BackingEntityKeyFieldName]
,[BackingEntityTableId]
,[BackingEntityTableName]
,[BackingEntityType]
,[BackingEntityValueFieldId]
,[BackingEntityValueFieldName]
,[BalancingDimension_PSN]
,[CopyValuesOnCreate]=case when [CopyValuesOnCreate]=1 then 'Yes' else 'No' end ,CopyValuesOnCreateFlag=cast([CopyValuesOnCreate] as bit)
,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DimensionKeyColumnName]
,[DimensionValueColumnName]
,[GiveDerivedDimensionsPrecedence]=case when [GiveDerivedDimensionsPrecedence]=1 then 'Yes' else 'No' end ,GiveDerivedDimensionsPrecedenceFlag=cast([GiveDerivedDimensionsPrecedence] as bit)
,[HashKey]
,[IsBalancing_PSN]=case when [IsBalancing_PSN]=1 then 'Yes' else 'No' end ,IsBalancing_PSNFlag=cast([IsBalancing_PSN] as bit)
,[KeyAttribute]
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[Name]
,[NameAttribute]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ReportColumnName]
,[TranslationKeyFieldId]
,[TranslationKeyFieldName]
,[TranslationLanguageIdFieldId]
,[TranslationLanguageIdFieldName]
,[TranslationNameFieldId]
,[TranslationNameFieldName]
,[TranslationTableId]
,[TranslationTableName]
,[TranslationViewId]
,[TranslationViewKeyFieldId]
,[TranslationViewKeyFieldName]
,[TranslationViewLanguageIdFieldId]
,[TranslationViewLanguageIdFieldName]
,[TranslationViewName]
,[TranslationViewNameFieldId]
,[TranslationViewNameFieldName]
,[TranslationViewSystemLanguageIdFieldId]
,[TranslationViewSystemLanguageIdFieldName]
,[TranslationViewTranslatedNameFieldId]
,[TranslationViewTranslatedNameFieldName]
,[TranslationViewValueFieldId]
,[TranslationViewValueFieldName]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='DimensionAttributeType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
,[UseTranslationNameMethod]=case when [UseTranslationNameMethod]=1 then 'Yes' else 'No' end ,UseTranslationNameMethodFlag=cast([UseTranslationNameMethod] as bit)
,[ValueAttribute]
,[ViewName]
 from blobFull.DimensionAttribute t
GO
