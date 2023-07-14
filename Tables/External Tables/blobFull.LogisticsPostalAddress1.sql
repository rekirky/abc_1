CREATE EXTERNAL TABLE [blobFull].[LogisticsPostalAddress]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Address] [varchar] (250) NULL,
[Apartment_RU] [varchar] (10) NULL,
[Building_RU] [varchar] (10) NULL,
[BuildingCompliment] [varchar] (60) NULL,
[City] [varchar] (60) NULL,
[CityRecId] [bigint] NULL,
[CountryRegionId] [varchar] (10) NULL,
[County] [varchar] (30) NULL,
[District] [bigint] NULL,
[DistrictName] [varchar] (60) NULL,
[FlatId_RU] [bigint] NULL,
[HouseId_RU] [bigint] NULL,
[IsPrivate] [varchar] (51) NULL,
[Latitude] [varchar] (51) NULL,
[Location] [bigint] NULL,
[Longitude] [varchar] (51) NULL,
[PostBox] [varchar] (20) NULL,
[PrivateForParty] [bigint] NULL,
[State] [varchar] (10) NULL,
[Street] [varchar] (250) NULL,
[StreetId_RU] [bigint] NULL,
[StreetNumber] [varchar] (20) NULL,
[TimeZone] [varchar] (51) NULL,
[ValidFrom] [varchar] (40) NULL,
[VALIDFROMTZID] [int] NULL,
[ValidTo] [varchar] (40) NULL,
[VALIDTOTZID] [int] NULL,
[ZipCode] [varchar] (10) NULL,
[ZipCodeRecId] [bigint] NULL,
[CityKana_JP] [varchar] (60) NULL,
[StreetKana_JP] [varchar] (250) NULL,
[SteadId_RU] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[IsSimplifiedAddress_RU] [varchar] (51) NULL,
[ChannelReferenceId] [varchar] (38) NULL,
[SettlementRecId] [bigint] NULL,
[LocalityRecId] [bigint] NULL
)
WITH
(
LOCATION = N'Tables/Common/GAB/Main/LogisticsPostalAddress/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO