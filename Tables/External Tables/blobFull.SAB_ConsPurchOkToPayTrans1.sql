CREATE EXTERNAL TABLE [blobFull].[SAB_ConsPurchOkToPayTrans]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Amount] [float] NULL,
[Approved] [varchar] (51) NULL,
[ApprovedBy] [bigint] NULL,
[HasError] [varchar] (51) NULL,
[Posted] [varchar] (51) NULL,
[WorkOrderSummary] [bigint] NULL,
[WrapInsuranceDeduction] [float] NULL,
[WrapInsuranceType] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[ClosedDate] [varchar] (40) NULL,
[DocumentDate] [varchar] (40) NULL,
[TransDate] [varchar] (40) NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsProcurement/Transaction/SAB_ConsPurchOkToPayTrans/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
