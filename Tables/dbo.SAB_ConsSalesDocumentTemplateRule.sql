CREATE TABLE [dbo].[SAB_ConsSalesDocumentTemplateRule]
(
[BuildingTypeId] [varchar] (20) NULL,
[ColorScheme] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DocumentType] [bigint] NULL,
[FacadeId] [varchar] (20) NULL,
[LotStructureElement] [bigint] NULL,
[OfferType] [varchar] (256) NULL,
[OfferTypeEnumID] [varchar] (51) NULL,
[OptionCategory] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Template] [bigint] NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[ValidFrom] [date] NULL,
[ValidTo] [date] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsSalesDocumentTemplateRule] ADD CONSTRAINT [PK_SAB_ConsSalesDocumentTemplateRule_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
