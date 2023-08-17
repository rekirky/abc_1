CREATE TABLE [stage].[DimensionAttribute]
(
[Instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[BackingEntityKeyFieldId] [varchar] (51) NULL,
[BackingEntityKeyFieldName] [varchar] (81) NULL,
[BackingEntityTableId] [varchar] (51) NULL,
[BackingEntityTableName] [varchar] (81) NULL,
[BackingEntityType] [varchar] (51) NULL,
[BackingEntityValueFieldId] [varchar] (51) NULL,
[BackingEntityValueFieldName] [varchar] (81) NULL,
[HashKey] [varchar] (50) NULL,
[KeyAttribute] [varchar] (51) NULL,
[Name] [varchar] (120) NULL,
[NameAttribute] [varchar] (51) NULL,
[ReportColumnName] [varchar] (6) NULL,
[TranslationKeyFieldId] [varchar] (51) NULL,
[TranslationKeyFieldName] [varchar] (81) NULL,
[TranslationLanguageIdFieldId] [varchar] (51) NULL,
[TranslationLanguageIdFieldName] [varchar] (81) NULL,
[TranslationNameFieldId] [varchar] (51) NULL,
[TranslationNameFieldName] [varchar] (81) NULL,
[TranslationTableId] [varchar] (51) NULL,
[TranslationTableName] [varchar] (81) NULL,
[Type] [varchar] (51) NULL,
[UseTranslationNameMethod] [varchar] (51) NULL,
[ValueAttribute] [varchar] (51) NULL,
[ViewName] [varchar] (81) NULL,
[TranslationViewKeyFieldName] [varchar] (81) NULL,
[TranslationViewLanguageIdFieldName] [varchar] (81) NULL,
[TranslationViewName] [varchar] (81) NULL,
[TranslationViewNameFieldName] [varchar] (81) NULL,
[TranslationViewSystemLanguageIdFieldName] [varchar] (81) NULL,
[TranslationViewTranslatedNameFieldName] [varchar] (81) NULL,
[TranslationViewValueFieldName] [varchar] (81) NULL,
[TranslationViewId] [varchar] (51) NULL,
[TranslationViewKeyFieldId] [varchar] (51) NULL,
[TranslationViewLanguageIdFieldId] [varchar] (51) NULL,
[TranslationViewNameFieldId] [varchar] (51) NULL,
[TranslationViewSystemLanguageIdFieldId] [varchar] (51) NULL,
[TranslationViewTranslatedNameFieldId] [varchar] (51) NULL,
[TranslationViewValueFieldId] [varchar] (51) NULL,
[DimensionKeyColumnName] [varchar] (81) NULL,
[DimensionValueColumnName] [varchar] (81) NULL,
[CopyValuesOnCreate] [varchar] (51) NULL,
[IsBalancing_PSN] [varchar] (51) NULL,
[BalancingDimension_PSN] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[GiveDerivedDimensionsPrecedence] [varchar] (51) NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL
) ON [PRIMARY]
GO