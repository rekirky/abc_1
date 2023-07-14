CREATE EXTERNAL TABLE [blobFull].[SAB_ConsWBSDelayReason]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Impact] [varchar] (51) NULL,
[Name] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[Type] [varchar] (51) NULL,
[OH_ConsResponsibilityRecId] [bigint] NULL,
[OH_requireOwner] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsOperations/Group/SAB_ConsWBSDelayReason/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
