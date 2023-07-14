CREATE TABLE [dbo].[SAB_ConsCSRequestVendorPendingStatusReason]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[PARTITION] [bigint] NULL,
[PendingStatusReason] [varchar] (50) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsCSRequestVendorPendingStatusReason] ADD CONSTRAINT [PK_SAB_ConsCSRequestVendorPendingStatusReason_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
