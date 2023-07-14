CREATE EXTERNAL TABLE [blobFull].[SAB_ConsOptionValidation]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[AddSalesPriceToBase] [varchar] (51) NULL,
[BuildingTypeId] [varchar] (20) NULL,
[FacadeId] [varchar] (20) NULL,
[Location] [bigint] NULL,
[LocationGroup] [bigint] NULL,
[LotGroup] [bigint] NULL,
[LotStructureElement] [bigint] NULL,
[OPTION_] [bigint] NULL,
[OptionCategory] [bigint] NULL,
[ParentOptionMaster] [bigint] NULL,
[Subfloor] [bigint] NULL,
[ValidationMode] [varchar] (51) NULL,
[ValidFrom] [varchar] (40) NULL,
[ValidTo] [varchar] (40) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[OptionRestriction] [varchar] (51) NULL,
[Mandatory] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/General/Main/SAB_ConsOptionValidation/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
