CREATE TABLE [dbo].[SAB_ConsBuildingTypeName]
(
[BuildingTypeId] [varchar] (20) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (120) NULL,
[LotStructureElement] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsBuildingTypeName] ADD CONSTRAINT [PK_SAB_ConsBuildingTypeName_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
