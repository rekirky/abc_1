CREATE TABLE [dbo].[SAB_ConsOptionValidation]
(
[AddSalesPriceToBase] [varchar] (3) NULL,
[AddSalesPriceToBaseFlag] [bit] NULL,
[BuildingTypeId] [varchar] (20) NULL,
[CREATEDDATETIME] [date] NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[FacadeId] [varchar] (20) NULL,
[Location] [bigint] NULL,
[LocationGroup] [bigint] NULL,
[LotGroup] [bigint] NULL,
[LotStructureElement] [bigint] NULL,
[Mandatory] [varchar] (3) NULL,
[MandatoryFlag] [bit] NULL,
[OPTION_] [bigint] NULL,
[OptionCategory] [bigint] NULL,
[OptionRestriction] [varchar] (256) NULL,
[OptionRestrictionEnumID] [varchar] (51) NULL,
[ParentOptionMaster] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[Subfloor] [bigint] NULL,
[ValidationMode] [varchar] (256) NULL,
[ValidationModeEnumID] [varchar] (51) NULL,
[ValidFrom] [date] NULL,
[ValidTo] [date] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SAB_ConsOptionValidation] ADD CONSTRAINT [PK_SAB_ConsOptionValidation_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_Sab_ConsOptionValidation] ON [dbo].[SAB_ConsOptionValidation] ([LotStructureElement], [OPTION_], [ParentOptionMaster], [ValidFrom], [ValidTo]) ON [PRIMARY]
GO
