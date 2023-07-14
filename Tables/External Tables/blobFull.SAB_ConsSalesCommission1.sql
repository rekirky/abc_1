CREATE EXTERNAL TABLE [blobFull].[SAB_ConsSalesCommission]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Agent] [bigint] NULL,
[Amount] [float] NULL,
[Broker] [bigint] NULL,
[Opportunity] [bigint] NULL,
[CalcAmount] [float] NULL,
[AdjustedAmount] [float] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[PercentRule] [varchar] (51) NULL,
[Lot] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/General/WorksheetLine/SAB_ConsSalesCommission/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
