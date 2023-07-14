CREATE TABLE [dbo].[SAB_ConsLotStructureElement]
(
[BuildingTypeId] [varchar] (20) NULL,
[CalendarId] [varchar] (10) NULL,
[ColorScheme] [bigint] NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[CSExternallyManaged] [varchar] (51) NULL,
[CSExternalVendor] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[DevelopmentId] [varchar] (10) NULL,
[DevelopmentType] [varchar] (256) NULL,
[DevelopmentTypeEnumID] [varchar] (51) NULL,
[ElementType] [bigint] NULL,
[FacadeId] [varchar] (20) NULL,
[InheritTeams] [varchar] (3) NULL,
[InheritTeamsFlag] [bit] NULL,
[IsActive] [varchar] (3) NULL,
[IsActiveFlag] [bit] NULL,
[IsLotAttributesInherited] [varchar] (51) NULL,
[LEVEL_] [bigint] NULL,
[Name] [varchar] (254) NULL,
[NestedSetLeft] [bigint] NULL,
[NestedSetRight] [bigint] NULL,
[Orientation] [varchar] (256) NULL,
[OrientationEnumID] [varchar] (51) NULL,
[ParentLotStructureElement] [bigint] NULL,
[PARTITION] [bigint] NULL,
[Party] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Subfloor] [bigint] NULL,
[TarionDateTemplate] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsLotStructureElement] ADD CONSTRAINT [PK_SAB_ConsLotStructureElement_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_SAB_ConsLotStructureElement] ON [dbo].[SAB_ConsLotStructureElement] ([RECID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[SAB_ConsLotStructureElement] TO [Eliant]
GO
GRANT SELECT ON  [dbo].[SAB_ConsLotStructureElement] TO [OH_BasicReadOnly]
GO
