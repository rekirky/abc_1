CREATE TABLE [dbo].[SAB_ConsOptionDescription]
(
[BuildingTypeId] [varchar] (20) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (1000) NULL,
[FacadeId] [varchar] (20) NULL,
[LotStructureElement] [bigint] NULL,
[Module] [varchar] (256) NULL,
[ModuleEnumID] [varchar] (51) NULL,
[OPTION_] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[TradeType] [bigint] NULL,
[ValidFrom] [date] NULL,
[ValidTo] [date] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsOptionDescription] ADD CONSTRAINT [PK_SAB_ConsOptionDescription_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
