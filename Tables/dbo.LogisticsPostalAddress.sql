CREATE TABLE [dbo].[LogisticsPostalAddress]
(
[Address] [varchar] (250) NULL,
[Apartment_RU] [varchar] (10) NULL,
[Building_RU] [varchar] (10) NULL,
[BuildingCompliment] [varchar] (60) NULL,
[ChannelReferenceId] [varchar] (38) NULL,
[City] [varchar] (60) NULL,
[CityKana_JP] [varchar] (60) NULL,
[CityRecId] [bigint] NULL,
[CountryRegionId] [varchar] (10) NULL,
[County] [varchar] (30) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[District] [bigint] NULL,
[DistrictName] [varchar] (60) NULL,
[FlatId_RU] [bigint] NULL,
[HouseId_RU] [bigint] NULL,
[IsPrivate] [varchar] (51) NULL,
[IsSimplifiedAddress_RU] [varchar] (51) NULL,
[Latitude] [varchar] (51) NULL,
[LocalityRecId] [bigint] NULL,
[Location] [bigint] NULL,
[Longitude] [varchar] (51) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[MODIFIEDDATETIME] [date] NULL,
[PARTITION] [bigint] NULL,
[PostBox] [varchar] (20) NULL,
[PrivateForParty] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[SettlementRecId] [bigint] NULL,
[State] [varchar] (10) NULL,
[SteadId_RU] [bigint] NULL,
[Street] [varchar] (250) NULL,
[StreetId_RU] [bigint] NULL,
[StreetKana_JP] [varchar] (250) NULL,
[StreetNumber] [varchar] (20) NULL,
[TimeZone] [varchar] (256) NULL,
[TimeZoneEnumID] [varchar] (51) NULL,
[ValidFrom] [date] NULL,
[VALIDFROMTZID] [int] NULL,
[ValidTo] [date] NULL,
[VALIDTOTZID] [int] NULL,
[ZipCode] [varchar] (10) NULL,
[ZipCodeRecId] [bigint] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LogisticsPostalAddress] ADD CONSTRAINT [PK_LogisticsPostalAddress_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_LogisticsPostalAddress_RecID] ON [dbo].[LogisticsPostalAddress] ([Location], [ValidFrom], [ValidTo]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[LogisticsPostalAddress] TO [Eliant]
GO
GRANT SELECT ON  [dbo].[LogisticsPostalAddress] TO [OH_ProductionPlanning]
GO
