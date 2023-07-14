CREATE TABLE [dbo].[SAB_ConsBuildingTypeFacadeName]
(
[BuildingTypeId] [varchar] (20) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FacadeDescription] [varchar] (120) NULL,
[FacadeId] [varchar] (20) NULL,
[LotStructureElement] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsBuildingTypeFacadeName] ADD CONSTRAINT [PK_SAB_ConsBuildingTypeFacadeName_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
