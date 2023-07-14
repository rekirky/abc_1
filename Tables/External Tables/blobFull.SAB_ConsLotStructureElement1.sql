CREATE EXTERNAL TABLE [blobFull].[SAB_ConsLotStructureElement]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[BuildingTypeId] [varchar] (20) NULL,
[CalendarId] [varchar] (10) NULL,
[ColorScheme] [bigint] NULL,
[CSExternallyManaged] [varchar] (51) NULL,
[CSExternalVendor] [bigint] NULL,
[DevelopmentId] [varchar] (10) NULL,
[DevelopmentType] [varchar] (51) NULL,
[ElementType] [bigint] NULL,
[FacadeId] [varchar] (20) NULL,
[InheritTeams] [varchar] (51) NULL,
[IsActive] [varchar] (51) NULL,
[IsLotAttributesInherited] [varchar] (51) NULL,
[LEVEL_] [bigint] NULL,
[Name] [varchar] (254) NULL,
[NestedSetLeft] [bigint] NULL,
[NestedSetRight] [bigint] NULL,
[Orientation] [varchar] (51) NULL,
[ParentLotStructureElement] [bigint] NULL,
[Party] [bigint] NULL,
[Subfloor] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[TarionDateTemplate] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/SAB_ConsLandDevelopment/Main/SAB_ConsLotStructureElement/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
