CREATE TABLE [dbo].[SAB_ConsBuildingTypeFacade]
(
[BuildingTypeId] [varchar] (20) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FacadeDescription] [varchar] (120) NULL,
[FacadeId] [varchar] (20) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsBuildingTypeFacade] ADD CONSTRAINT [PK_SAB_ConsBuildingTypeFacade_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_SAB_ConsBuildingTypeFacade] ON [dbo].[SAB_ConsBuildingTypeFacade] ([BuildingTypeId], [FacadeId]) ON [PRIMARY]
GO
