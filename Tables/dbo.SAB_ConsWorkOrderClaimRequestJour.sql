CREATE TABLE [dbo].[SAB_ConsWorkOrderClaimRequestJour]
(
[ClaimRequestDateTime] [date] NULL,
[CLAIMREQUESTDATETIMETZID] [int] NULL,
[ClaimRequestId] [varchar] (30) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DocumentDate] [date] NULL,
[InvoiceId] [varchar] (30) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Responsibility] [bigint] NULL,
[Status] [varchar] (256) NULL,
[StatusEnumID] [varchar] (51) NULL,
[TransDate] [date] NULL,
[WorkOrder] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsWorkOrderClaimRequestJour] ADD CONSTRAINT [PK_SAB_ConsWorkOrderClaimRequestJour_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
