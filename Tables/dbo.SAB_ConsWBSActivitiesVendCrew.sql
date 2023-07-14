CREATE TABLE [dbo].[SAB_ConsWBSActivitiesVendCrew]
(
[ActivityNumber] [varchar] (50) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[VendCrew] [bigint] NULL,
[Vendor] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsWBSActivitiesVendCrew] ADD CONSTRAINT [PK_SAB_ConsWBSActivitiesVendCrew_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_Sab_ConsWbsActivitiesVendCrew] ON [dbo].[SAB_ConsWBSActivitiesVendCrew] ([VendCrew]) ON [PRIMARY]
GO
