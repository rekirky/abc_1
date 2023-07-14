CREATE TABLE [dbo].[LogisticsElectronicAddress]
(
[ChannelReferenceId] [varchar] (38) NULL,
[CountryRegionCode] [varchar] (5) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[Description] [varchar] (120) NULL,
[ElectronicAddressId] [varchar] (40) NULL,
[ElectronicAddressRoles] [varchar] (1000) NULL,
[IsInstantMessage] [varchar] (51) NULL,
[IsMobilePhone] [varchar] (51) NULL,
[IsPrimary] [varchar] (51) NULL,
[IsPrivate] [varchar] (51) NULL,
[Location] [bigint] NULL,
[Locator] [varchar] (255) NULL,
[LocatorExtension] [varchar] (10) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [date] NULL,
[OH_ContactPartyRecId] [bigint] NULL,
[PARTITION] [bigint] NULL,
[PrivateForParty] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RetailMarketingOptIn] [varchar] (51) NULL,
[Type] [varchar] (256) NULL,
[TypeEnumID] [varchar] (51) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LogisticsElectronicAddress] ADD CONSTRAINT [PK_LogisticsElectronicAddress_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_LOGISTICSELECTRONICADDRESS] ON [dbo].[LogisticsElectronicAddress] ([Location]) ON [PRIMARY]
GO
