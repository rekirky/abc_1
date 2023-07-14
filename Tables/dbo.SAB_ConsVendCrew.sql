CREATE TABLE [dbo].[SAB_ConsVendCrew]
(
[Color] [int] NULL,
[ContactParty] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Name] [varchar] (10) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Vendor] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsVendCrew] ADD CONSTRAINT [PK_SAB_ConsVendCrew_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
