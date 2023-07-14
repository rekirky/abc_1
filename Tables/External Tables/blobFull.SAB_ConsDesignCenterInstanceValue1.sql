CREATE EXTERNAL TABLE [blobFull].[SAB_ConsDesignCenterInstanceValue]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[InstanceRelationType] [bigint] NULL,
[SALESQUICKQUOTATION] [bigint] NULL,
[OPTIONTEMPLATE] [bigint] NULL,
[PHASERELEASELOT] [bigint] NULL,
[FINANCIALINSTANCE] [bigint] NULL,
[SALESDESIGNVERSION] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[RELATIONTYPE] [bigint] NULL,
[PSEUDOLOT] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/General/Worksheet/SAB_ConsDesignCenterInstanceValue/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
