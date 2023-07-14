CREATE TABLE [dbo].[SAB_ConsDynamicWBS]
(
[BuildingTypeId] [varchar] (20) NULL,
[Concurrency] [int] NULL,
[ConstructionPhase] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Duration] [varchar] (51) NULL,
[ElementType] [bigint] NULL,
[EnumerationAttributeValue] [bigint] NULL,
[FacadeId] [varchar] (20) NULL,
[GroupCount] [int] NULL,
[GroupRule] [varchar] (256) NULL,
[GroupRuleEnumID] [varchar] (51) NULL,
[LotStructureElement] [bigint] NULL,
[Milestone] [varchar] (51) NULL,
[OptionCategory] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ReleaseGroup] [bigint] NULL,
[ReportingActivity] [bigint] NULL,
[Responsibility] [bigint] NULL,
[StockStatus] [varchar] (20) NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsDynamicWBS] ADD CONSTRAINT [PK_SAB_ConsDynamicWBS_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
