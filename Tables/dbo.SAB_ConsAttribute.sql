CREATE TABLE [dbo].[SAB_ConsAttribute]
(
[AttributeClass_BuildingType] [varchar] (256) NULL,
[AttributeClass_BuildingTypeEnumID] [varchar] (51) NULL,
[AttributeClass_LandBank] [varchar] (256) NULL,
[AttributeClass_LandBankEnumID] [varchar] (51) NULL,
[AttributeClass_Option] [varchar] (256) NULL,
[AttributeClass_OptionEnumID] [varchar] (51) NULL,
[AttributeTab] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DataType] [varchar] (256) NULL,
[DataTypeEnumID] [varchar] (51) NULL,
[IsEnumeration] [varchar] (3) NULL,
[IsEnumerationFlag] [bit] NULL,
[LocationDependent] [varchar] (3) NULL,
[LocationDependentFlag] [bit] NULL,
[MultiLine] [varchar] (3) NULL,
[MultiLineFlag] [bit] NULL,
[MultiSelect] [varchar] (3) NULL,
[MultiSelectFlag] [bit] NULL,
[Name] [varchar] (120) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[SalesDocumentPriceBreakout] [varchar] (3) NULL,
[SalesDocumentPriceBreakoutFlag] [bit] NULL,
[Sorting] [int] NULL,
[Usage] [varchar] (256) NULL,
[UsageEnumID] [varchar] (51) NULL,
[UseAdjustedMeasurement] [varchar] (3) NULL,
[UseAdjustedMeasurementFlag] [bit] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsAttribute] ADD CONSTRAINT [PK_SAB_ConsAttribute_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_SAB_ConsAttribute] ON [dbo].[SAB_ConsAttribute] ([RECID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[SAB_ConsAttribute] TO [OH_BasicReadOnly]
GO
