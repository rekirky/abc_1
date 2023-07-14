CREATE EXTERNAL TABLE [blobFull].[SAB_ConsCSRequest]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[CloseDate] [varchar] (40) NULL,
[CloseReason] [bigint] NULL,
[ContactMethod] [bigint] NULL,
[ContactParty] [bigint] NULL,
[CSRepresentativeWorker] [bigint] NULL,
[Emergency] [varchar] (51) NULL,
[Lot] [bigint] NULL,
[RequestCategory] [bigint] NULL,
[RequestDate] [varchar] (40) NULL,
[RequestId] [varchar] (30) NULL,
[RequestSource] [bigint] NULL,
[RequestStatus] [varchar] (51) NULL,
[SuspendDate] [varchar] (40) NULL,
[SuspendReason] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[FinancialInstance] [bigint] NULL,
[Type] [varchar] (51) NULL,
[OrientationScoreResult] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsCS/WorksheetHeader/SAB_ConsCSRequest/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
