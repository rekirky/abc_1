CREATE TABLE [dbo].[SAB_ConsCSLotContact]
(
[Active] [varchar] (3) NULL,
[ActiveFlag] [bit] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[IsPrimary] [varchar] (3) NULL,
[IsPrimaryFlag] [bit] NULL,
[Lot] [bigint] NULL,
[OccupantStatus] [bigint] NULL,
[PARTITION] [bigint] NULL,
[Party] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsCSLotContact] ADD CONSTRAINT [PK_SAB_ConsCSLotContact_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
