CREATE TABLE [dbo].[SAB_ConsCSRequestVendorScheduleLine]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[LineNumber] [bigint] NULL,
[Obligation] [varchar] (256) NULL,
[ObligationEnumID] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RequestLine] [bigint] NULL,
[RequestVendorSchedule] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsCSRequestVendorScheduleLine] ADD CONSTRAINT [PK_SAB_ConsCSRequestVendorScheduleLine_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
