CREATE TABLE [stage].[LogisticsElectronicAddress]
(
[instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[CountryRegionCode] [varchar] (5) NULL,
[Description] [varchar] (120) NULL,
[IsInstantMessage] [varchar] (51) NULL,
[IsMobilePhone] [varchar] (51) NULL,
[IsPrimary] [varchar] (51) NULL,
[IsPrivate] [varchar] (51) NULL,
[Location] [bigint] NULL,
[Locator] [varchar] (255) NULL,
[LocatorExtension] [varchar] (10) NULL,
[PrivateForParty] [bigint] NULL,
[Type] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[ElectronicAddressRoles] [varchar] (1000) NULL,
[RetailMarketingOptIn] [varchar] (51) NULL,
[ElectronicAddressId] [varchar] (40) NULL,
[ChannelReferenceId] [varchar] (38) NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[OH_ContactPartyRecId] [bigint] NULL
) ON [PRIMARY]
GO
