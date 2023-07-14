CREATE TABLE [dbo].[SAB_ConsCSRequest]
(
[CloseDate] [date] NULL,
[CloseReason] [bigint] NULL,
[ContactMethod] [bigint] NULL,
[ContactParty] [bigint] NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[CSRepresentativeWorker] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Emergency] [varchar] (3) NULL,
[EmergencyFlag] [bit] NULL,
[FinancialInstance] [bigint] NULL,
[Lot] [bigint] NULL,
[OrientationScoreResult] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RequestCategory] [bigint] NULL,
[RequestDate] [date] NULL,
[RequestId] [varchar] (30) NULL,
[RequestSource] [bigint] NULL,
[RequestStatus] [varchar] (256) NULL,
[RequestStatusEnumID] [varchar] (51) NULL,
[SuspendDate] [date] NULL,
[SuspendReason] [bigint] NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsCSRequest] ADD CONSTRAINT [PK_SAB_ConsCSRequest_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[SAB_ConsCSRequest] TO [Eliant]
GO
