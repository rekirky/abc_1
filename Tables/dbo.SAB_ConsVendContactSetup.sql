CREATE TABLE [dbo].[SAB_ConsVendContactSetup]
(
[ContactParty] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[HideWorkOrderPrice] [varchar] (3) NULL,
[HideWorkOrderPriceFlag] [bit] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Vendor] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsVendContactSetup] ADD CONSTRAINT [PK_SAB_ConsVendContactSetup_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
