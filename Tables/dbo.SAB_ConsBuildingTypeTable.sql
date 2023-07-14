CREATE TABLE [dbo].[SAB_ConsBuildingTypeTable]
(
[ConsBuildingTypeDescription] [varchar] (120) NULL,
[ConsBuildingTypeId] [varchar] (20) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FromDate] [date] NULL,
[Inactive] [varchar] (3) NULL,
[InactiveFlag] [bit] NULL,
[PARTITION] [bigint] NULL,
[PlanDescription] [varchar] (1000) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Status] [varchar] (256) NULL,
[StatusEnumID] [varchar] (51) NULL,
[ToDate] [date] NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsBuildingTypeTable] ADD CONSTRAINT [PK_SAB_ConsBuildingTypeTable_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_Sab_ConsBuildingTypeTable] ON [dbo].[SAB_ConsBuildingTypeTable] ([ConsBuildingTypeId], [FromDate], [ToDate]) ON [PRIMARY]
GO
