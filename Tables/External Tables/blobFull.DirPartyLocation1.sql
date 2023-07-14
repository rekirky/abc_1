CREATE EXTERNAL TABLE [blobFull].[DirPartyLocation]
(
[_SysRowId] [varchar] (60) NULL,
[LSN] [varchar] (60) NULL,
[LastProcessedChange_DateTime] [varchar] (50) NULL,
[DataLakeModified_DateTime] [varchar] (50) NULL,
[RECID] [bigint] NULL,
[AttentionToAddressLine] [varchar] (255) NULL,
[IsLocationOwner] [varchar] (51) NULL,
[IsPostalAddress] [varchar] (51) NULL,
[IsPrimary] [varchar] (51) NULL,
[IsPrimaryTaxRegistration] [varchar] (51) NULL,
[IsPrivate] [varchar] (51) NULL,
[IsRoleBusiness] [varchar] (51) NULL,
[IsRoleDelivery] [varchar] (51) NULL,
[IsRoleHome] [varchar] (51) NULL,
[IsRoleInvoice] [varchar] (51) NULL,
[Location] [bigint] NULL,
[Party] [bigint] NULL,
[PARTITION] [bigint] NULL,
[RECVERSION] [int] NULL,
[MODIFIEDBY] [varchar] (20) NULL,
[PostalAddressRoles] [varchar] (1000) NULL
)
WITH
(
LOCATION = N'Tables/Common/GAB/Main/DirPartyLocation/*.csv',
DATA_SOURCE = [d365ADLS],
FILE_FORMAT = [csvQuotedText],
REJECT_TYPE = value,
REJECT_VALUE = 0
)
GO
