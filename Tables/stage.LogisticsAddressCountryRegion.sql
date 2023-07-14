CREATE TABLE [stage].[LogisticsAddressCountryRegion]
(
[Instance] [bigint] NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[Start_LSN] [varchar] (50) NULL,
[End_LSN] [varchar] (50) NULL,
[DML_Action] [varchar] (100) NULL,
[Seq_Val] [varchar] (50) NULL,
[Update_Mask] [varchar] (400) NULL,
[RECID] [bigint] NULL,
[AddressUseZipPlus4] [varchar] (51) NULL,
[AddrFormat] [varchar] (10) NULL,
[BACENCode_BR] [varchar] (4) NULL,
[CountryRegionId] [varchar] (10) NULL,
[CurrencyCode] [varchar] (3) NULL,
[IsImmutable] [varchar] (51) NULL,
[ISOcode] [varchar] (2) NULL,
[OKSMCode_RU] [varchar] (3) NULL,
[TimeZone] [varchar] (51) NULL,
[MCRIOR_Facility_ID] [varchar] (12) NULL,
[RPayParentCountryRegionId] [varchar] (10) NULL,
[MemberOfCustomsUnion_RU] [varchar] (51) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL
) ON [PRIMARY]
GO
