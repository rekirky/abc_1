CREATE TABLE [dbo].[SAB_ConsDirectLienWaiverInvoiceTrans]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DirectLienWaiver] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[VendInvoiceTrans] [bigint] NULL,
[VendTrans] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsDirectLienWaiverInvoiceTrans] ADD CONSTRAINT [PK_SAB_ConsDirectLienWaiverInvoiceTrans_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
