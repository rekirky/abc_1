CREATE TABLE [stage].[SAB_ConsWorkOrderClaimRequestJour]
(
[instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
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
) ON [PRIMARY]
GO
