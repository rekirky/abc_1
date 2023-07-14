CREATE TABLE [stage].[SAB_ConsSalesDocumentTemplateRule]
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
[ColorScheme] [bigint] NULL,
[DocumentType] [bigint] NULL,
[LotStructureElement] [bigint] NULL,
[OfferType] [varchar] (51) NULL,
[OptionCategory] [bigint] NULL,
[Template] [bigint] NULL,
[Type] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[ValidTo] [varchar] (40) NULL,
[ValidFrom] [varchar] (40) NULL,
[BuildingTypeId] [varchar] (20) NULL,
[FacadeId] [varchar] (20) NULL
) ON [PRIMARY]
GO
