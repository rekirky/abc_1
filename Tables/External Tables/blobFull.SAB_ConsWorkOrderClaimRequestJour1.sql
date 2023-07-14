CREATE EXTERNAL TABLE [blobFull].[SAB_ConsWorkOrderClaimRequestJour]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[ClaimRequestId] [varchar] (30) NULL,
[ClaimRequestDateTime] [varchar] (40) NULL,
[CLAIMREQUESTDATETIMETZID] [int] NULL,
[InvoiceId] [varchar] (30) NULL,
[Status] [varchar] (51) NULL,
[WorkOrder] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[DocumentDate] [varchar] (40) NULL,
[TransDate] [varchar] (40) NULL,
[Responsibility] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsProcurement/TransactionHeader/SAB_ConsWorkOrderClaimRequestJour/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
