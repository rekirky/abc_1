CREATE TABLE [stage].[SAB_ConsDesignCenterAttribute]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Attribute] [bigint] NULL,
[AttributeValue] [bigint] NULL,
[BuildingTypeId] [varchar] (20) NULL,
[FacadeId] [varchar] (20) NULL,
[Location] [bigint] NULL,
[LocationGroup] [bigint] NULL,
[LotStructureElement] [bigint] NULL,
[OPTION_] [bigint] NULL,
[OptionCategory] [bigint] NULL,
[TradeType] [bigint] NULL,
[ValidFrom] [varchar] (40) NULL,
[ValidTo] [varchar] (40) NULL,
[ValidationMode] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[CREATEDDATETIME] [varchar] (40) NULL
) ON [PRIMARY]
GO
