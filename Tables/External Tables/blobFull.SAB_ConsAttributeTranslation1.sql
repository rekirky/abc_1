CREATE EXTERNAL TABLE [blobFull].[SAB_ConsAttributeTranslation]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Attribute] [bigint] NULL,
[Description] [varchar] (255) NULL,
[FriendlyName] [varchar] (120) NULL,
[HelpText] [varchar] (255) NULL,
[Language] [varchar] (7) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
)
WITH
(
LOCATION = N'Tables/General/Main/SAB_ConsAttributeTranslation/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
