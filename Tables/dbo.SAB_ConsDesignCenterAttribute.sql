CREATE TABLE [dbo].[SAB_ConsDesignCenterAttribute]
(
[Attribute] [bigint] NULL,
[AttributeValue] [bigint] NULL,
[BuildingTypeId] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FacadeId] [varchar] (20) NULL,
[Location] [bigint] NULL,
[LocationGroup] [bigint] NULL,
[LotStructureElement] [bigint] NULL,
[OPTION_] [bigint] NULL,
[OptionCategory] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[TradeType] [bigint] NULL,
[ValidationMode] [varchar] (256) NULL,
[ValidationModeEnumID] [varchar] (51) NULL,
[ValidFrom] [date] NULL,
[ValidTo] [date] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsDesignCenterAttribute] ADD CONSTRAINT [PK_SAB_ConsDesignCenterAttribute_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
