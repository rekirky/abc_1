CREATE TABLE [stage].[SAB_ConsCSRequest]
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
) ON [PRIMARY]
GO
