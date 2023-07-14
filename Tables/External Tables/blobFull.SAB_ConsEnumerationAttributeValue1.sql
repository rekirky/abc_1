CREATE EXTERNAL TABLE [blobFull].[SAB_ConsEnumerationAttributeValue]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Attribute] [bigint] NULL,
[OrdinalNumber] [int] NULL,
[TextPrompt] [varchar] (51) NULL,
[Value] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[Inactive] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/General/Main/SAB_ConsEnumerationAttributeValue/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
