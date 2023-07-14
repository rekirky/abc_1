CREATE EXTERNAL TABLE [blobFull].[Tax1099Fields]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Description] [varchar] (50) NULL,
[Tax1099Amount] [float] NULL,
[Tax1099Box] [varchar] (10) NULL,
[Tax1099FieldNum] [int] NULL,
[Tax1099Form] [varchar] (10) NULL,
[Tax1099Type] [varchar] (51) NULL,
[DataAreaId] [varchar] (4) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDBY] [varchar] (20) NULL
)
WITH
(
LOCATION = N'Tables/Finance/AccountsPayable/Group/Tax1099Fields/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
