CREATE EXTERNAL TABLE [blobFull].[SAB_ConsWBSDelayTrans]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[ActivityNumber] [varchar] (50) NULL,
[DelayReason] [bigint] NULL,
[FinancialInstance] [bigint] NULL,
[NumberOfDays] [int] NULL,
[SchedStartDateNew] [varchar] (40) NULL,
[SchedStartDateOrig] [varchar] (40) NULL,
[SchedEndDateNew] [varchar] (40) NULL,
[SchedEndDateOrig] [varchar] (40) NULL,
[TransDate] [varchar] (40) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDBY] [varchar] (20) NULL,
[OH_DelayOwner] [varchar] (51) NULL,
[OH_LockState] [varchar] (51) NULL,
[OH_UpdateType] [varchar] (51) NULL,
[OH_UpdateTypeSet] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsOperations/Transaction/SAB_ConsWBSDelayTrans/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
