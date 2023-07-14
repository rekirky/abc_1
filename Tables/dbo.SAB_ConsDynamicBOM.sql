CREATE TABLE [dbo].[SAB_ConsDynamicBOM]
(
[BuildingTypeId] [varchar] (20) NULL,
[ChangeReason] [bigint] NULL,
[CostCategory] [bigint] NULL,
[CREATEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FacadeId] [varchar] (20) NULL,
[ItemId] [varchar] (20) NULL,
[Location] [bigint] NULL,
[LocationGroup] [bigint] NULL,
[LotStructureElement] [bigint] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [date] NULL,
[OPTION_] [bigint] NULL,
[Orientation] [varchar] (256) NULL,
[OrientationEnumID] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[Qty] [varchar] (51) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[UnitId] [varchar] (10) NULL,
[ValidFrom] [date] NULL,
[ValidTo] [date] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsDynamicBOM] ADD CONSTRAINT [PK_SAB_ConsDynamicBOM_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_SAB_CONSDYNAMICBOM] ON [dbo].[SAB_ConsDynamicBOM] ([BuildingTypeId], [LotStructureElement], [ValidFrom]) ON [PRIMARY]
GO
