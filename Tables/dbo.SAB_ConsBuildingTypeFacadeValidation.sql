CREATE TABLE [dbo].[SAB_ConsBuildingTypeFacadeValidation]
(
[BuildingTypeId] [varchar] (20) NULL,
[CREATEDBY] [varchar] (20) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FacadeId] [varchar] (20) NULL,
[LotStructureElement] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Status] [bigint] NULL,
[ValidFrom] [date] NULL,
[ValidTo] [date] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsBuildingTypeFacadeValidation] ADD CONSTRAINT [PK_SAB_ConsBuildingTypeFacadeValidation_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_Sab_ConsBuildingTypeFacadeValidation] ON [dbo].[SAB_ConsBuildingTypeFacadeValidation] ([BuildingTypeId], [FacadeId], [Status], [ValidFrom], [ValidTo]) ON [PRIMARY]
GO
