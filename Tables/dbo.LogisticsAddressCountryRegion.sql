CREATE TABLE [dbo].[LogisticsAddressCountryRegion]
(
[AddressUseZipPlus4] [varchar] (51) NULL,
[AddrFormat] [varchar] (10) NULL,
[BACENCode_BR] [varchar] (4) NULL,
[CountryRegionId] [varchar] (10) NULL,
[CurrencyCode] [varchar] (3) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
[IsImmutable] [varchar] (51) NULL,
[ISOcode] [varchar] (2) NULL,
[MCRIOR_Facility_ID] [varchar] (12) NULL,
[MemberOfCustomsUnion_RU] [varchar] (51) NULL,
[OKSMCode_RU] [varchar] (3) NULL,
[PARTITION] [bigint] NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[RPayParentCountryRegionId] [varchar] (10) NULL,
[TimeZone] [varchar] (256) NULL,
[TimeZoneEnumID] [varchar] (51) NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LogisticsAddressCountryRegion] ADD CONSTRAINT [PK_LogisticsAddressCountryRegion_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
