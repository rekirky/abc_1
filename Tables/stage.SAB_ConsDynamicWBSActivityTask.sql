CREATE TABLE [stage].[SAB_ConsDynamicWBSActivityTask]
(
[Instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[ActivityTask] [bigint] NULL,
[BuildingTypeId] [varchar] (20) NULL,
[CostCategory] [bigint] NULL,
[FacadeId] [varchar] (20) NULL,
[InternalExternal] [varchar] (51) NULL,
[LotStructureElement] [bigint] NULL,
[ReportingActivity] [bigint] NULL,
[ValidFrom] [varchar] (40) NULL,
[ValidTo] [varchar] (40) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[EnumerationAttributeValue] [bigint] NULL
) ON [PRIMARY]
GO
