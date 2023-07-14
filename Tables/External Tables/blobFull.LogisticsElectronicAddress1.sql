CREATE EXTERNAL TABLE [blobFull].[LogisticsElectronicAddress]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
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
)
WITH
(
LOCATION = N'Tables/Common/GAB/Main/LogisticsElectronicAddress/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
