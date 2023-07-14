CREATE TABLE [dbo].[OH_LotOwnershipTypes]
(
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[OH_LotOwnershipType] [varchar] (50) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OH_LotOwnershipTypes] ADD CONSTRAINT [PK_OH_LotOwnershipTypes_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
