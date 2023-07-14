CREATE TABLE [stage].[SAB_ConsCSRequestLine]
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
[Category] [bigint] NULL,
[CloseDate] [varchar] (40) NULL,
[CloseReason] [bigint] NULL,
[Diagnosis] [bigint] NULL,
[Item] [bigint] NULL,
[LineNumber] [bigint] NULL,
[Location] [bigint] NULL,
[Request] [bigint] NULL,
[RequestStatus] [varchar] (51) NULL,
[RootCause] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[RequestOrientationTask] [bigint] NULL
) ON [PRIMARY]
GO
