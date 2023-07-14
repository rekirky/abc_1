CREATE TABLE [stage].[SAB_ConsBuildingTypeTable]
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
[ConsBuildingTypeDescription] [varchar] (120) NULL,
[ConsBuildingTypeId] [varchar] (20) NULL,
[FromDate] [varchar] (40) NULL,
[Inactive] [varchar] (51) NULL,
[PlanDescription] [varchar] (1000) NULL,
[Status] [varchar] (51) NULL,
[ToDate] [varchar] (40) NULL,
[Type] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
) ON [PRIMARY]
GO
