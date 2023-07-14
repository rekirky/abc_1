CREATE TABLE [dbo].[SAB_ConsDynamicWBSActivityTask]
(
[ActivityTask] [bigint] NULL,
[BuildingTypeId] [varchar] (20) NULL,
[CostCategory] [bigint] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[EnumerationAttributeValue] [bigint] NULL,
[FacadeId] [varchar] (20) NULL,
[InternalExternal] [varchar] (256) NULL,
[InternalExternalEnumID] [varchar] (51) NULL,
[LotStructureElement] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[ReportingActivity] [bigint] NULL,
[ValidFrom] [date] NULL,
[ValidTo] [date] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsDynamicWBSActivityTask] ADD CONSTRAINT [PK_SAB_ConsDynamicWBSActivityTask_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
