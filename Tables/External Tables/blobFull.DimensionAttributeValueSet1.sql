CREATE EXTERNAL TABLE [blobFull].[DimensionAttributeValueSet]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[Hash] [varchar] (51) NULL,
[MainAccount] [bigint] NULL,
[MainAccountValue] [varchar] (30) NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[SYSTEMGENERATEDATTRIBUTEBANKACCOUNT] [bigint] NULL,
[SYSTEMGENERATEDATTRIBUTEBANKACCOUNTVALUE] [varchar] (30) NULL,
[SYSTEMGENERATEDATTRIBUTECUSTOMER] [bigint] NULL,
[SYSTEMGENERATEDATTRIBUTECUSTOMERVALUE] [varchar] (30) NULL,
[SYSTEMGENERATEDATTRIBUTEEMPLOYEE] [bigint] NULL,
[SYSTEMGENERATEDATTRIBUTEEMPLOYEEVALUE] [varchar] (30) NULL,
[SYSTEMGENERATEDATTRIBUTEFIXEDASSET] [bigint] NULL,
[SYSTEMGENERATEDATTRIBUTEFIXEDASSETVALUE] [varchar] (30) NULL,
[SYSTEMGENERATEDATTRIBUTEITEM] [bigint] NULL,
[SYSTEMGENERATEDATTRIBUTEITEMVALUE] [varchar] (30) NULL,
[SYSTEMGENERATEDATTRIBUTEPROJECT] [bigint] NULL,
[SYSTEMGENERATEDATTRIBUTEPROJECTVALUE] [varchar] (30) NULL,
[SYSTEMGENERATEDATTRIBUTEVENDOR] [bigint] NULL,
[SYSTEMGENERATEDATTRIBUTEVENDORVALUE] [varchar] (30) NULL,
[SYSTEMGENERATEDATTRIBUTEFIXEDASSETS_RU] [bigint] NULL,
[SYSTEMGENERATEDATTRIBUTEFIXEDASSETS_RUVALUE] [varchar] (30) NULL,
[SYSTEMGENERATEDATTRIBUTERDEFERRALS] [bigint] NULL,
[SYSTEMGENERATEDATTRIBUTERDEFERRALSVALUE] [varchar] (30) NULL,
[SYSTEMGENERATEDATTRIBUTERCASH] [bigint] NULL,
[SYSTEMGENERATEDATTRIBUTERCASHVALUE] [varchar] (30) NULL,
[SYSTEMGENERATEDATTRIBUTEEMPLOYEE_RU] [bigint] NULL,
[SYSTEMGENERATEDATTRIBUTEEMPLOYEE_RUVALUE] [varchar] (30) NULL,
[SERIES] [bigint] NULL,
[SERIESVALUE] [varchar] (30) NULL,
[DIVISION] [bigint] NULL,
[DIVISIONVALUE] [varchar] (30) NULL,
[LEGALENTITY] [bigint] NULL,
[LEGALENTITYVALUE] [varchar] (30) NULL,
[BANK] [bigint] NULL,
[BANKVALUE] [varchar] (30) NULL,
[MODIFIEDDATETIME] [varchar] (40) NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[CREATEDDATETIME] [varchar] (40) NULL,
[CREATEDBY] [varchar] (20) NULL,
[COMMUNITYORLANDPROPERTY] [bigint] NULL,
[COMMUNITYORLANDPROPERTYVALUE] [varchar] (30) NULL,
[ImpliedDataAreaId] [varchar] (4) NULL,
[AGREEMENT] [bigint] NULL,
[AGREEMENTVALUE] [varchar] (30) NULL,
[HashVersion] [varchar] (51) NULL,
[PRODUCTTYPE] [bigint] NULL,
[PRODUCTTYPEVALUE] [varchar] (30) NULL,
[SOFTWARE] [bigint] NULL,
[SOFTWAREVALUE] [varchar] (30) NULL,
[COUNTY] [bigint] NULL,
[COUNTYVALUE] [varchar] (30) NULL
)
WITH
(
LOCATION = N'Tables/Finance/FinancialDimensions/Main/DimensionAttributeValueSet/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
