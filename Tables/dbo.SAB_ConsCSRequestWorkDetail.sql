CREATE TABLE [dbo].[SAB_ConsCSRequestWorkDetail]
(
[Appointment] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FieldPurchOrder] [bigint] NULL,
[LineNumber] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Request] [bigint] NULL,
[Status] [varchar] (256) NULL,
[StatusEnumID] [varchar] (51) NULL,
[Vendor] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsCSRequestWorkDetail] ADD CONSTRAINT [PK_SAB_ConsCSRequestWorkDetail_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
