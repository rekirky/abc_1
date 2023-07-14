CREATE TABLE [dbo].[SAB_ConsCSRequestLine]
(
[Category] [bigint] NULL,
[CloseDate] [date] NULL,
[CloseReason] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Diagnosis] [bigint] NULL,
[Item] [bigint] NULL,
[LineNumber] [bigint] NULL,
[Location] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Request] [bigint] NULL,
[RequestOrientationTask] [bigint] NULL,
[RequestStatus] [varchar] (256) NULL,
[RequestStatusEnumID] [varchar] (51) NULL,
[RootCause] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsCSRequestLine] ADD CONSTRAINT [PK_SAB_ConsCSRequestLine_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
