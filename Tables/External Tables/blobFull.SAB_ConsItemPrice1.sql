CREATE EXTERNAL TABLE [blobFull].[SAB_ConsItemPrice]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[BuildingTypeId] [varchar] (20) NULL,
[ChangeReason] [bigint] NULL,
[CostCategory] [bigint] NULL,
[FacadeId] [varchar] (20) NULL,
[ItemId] [varchar] (20) NULL,
[Location] [bigint] NULL,
[LocationGroup] [bigint] NULL,
[Lot] [bigint] NULL,
[LotStructureElement] [bigint] NULL,
[MasterAgreementVersion] [bigint] NULL,
[OPTION_] [bigint] NULL,
[ParentOptionMaster] [bigint] NULL,
[Price] [float] NULL,
[PriceType] [varchar] (51) NULL,
[UnitId] [varchar] (10) NULL,
[ValidFrom] [varchar] (40) NULL,
[ValidTo] [varchar] (40) NULL,
[Vendor] [bigint] NULL,
[ZeroPriceIndicator] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[OH_IncludeParentPricing] [varchar] (51) NULL,
[OH_OptionUpgradePrice] [varchar] (51) NULL
)
WITH
(
LOCATION = N'Tables/General/Main/SAB_ConsItemPrice/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
