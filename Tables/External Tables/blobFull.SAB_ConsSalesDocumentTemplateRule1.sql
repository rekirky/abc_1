CREATE EXTERNAL TABLE [blobFull].[SAB_ConsSalesDocumentTemplateRule]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
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
)
WITH
(
LOCATION = N'Tables/General/Group/SAB_ConsSalesDocumentTemplateRule/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
