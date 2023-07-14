CREATE EXTERNAL TABLE [blobFull].[SAB_ConsLotStructureElementTranslation]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Description] [varchar] (1000) NULL,
[FriendlyName] [varchar] (254) NULL,
[LanguageId] [varchar] (7) NULL,
[LotStructureElement] [bigint] NULL,
[SearchText] [varchar] (254) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL
)
WITH
(
LOCATION = N'Tables/General/Main/SAB_ConsLotStructureElementTranslation/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
