CREATE TABLE [dbo].[DirPartyLocation]
(
[AttentionToAddressLine] [varchar] (255) NULL,
[DataLakeModified_DateTime] [datetime2] (0) NULL,
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
[MODIFIEDBY] [varchar] (20) NULL,
[PARTITION] [bigint] NULL,
[Party] [bigint] NULL,
[PostalAddressRoles] [varchar] (1000) NULL,
[RECID] [bigint] NOT NULL,
[RECVERSION] [int] NULL,
[LSN] [varchar] (60) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DirPartyLocation] ADD CONSTRAINT [PK_DirPartyLocation_RecID] PRIMARY KEY CLUSTERED ([RECID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_dbo_NC_DIRPARTYLOCATION] ON [dbo].[DirPartyLocation] ([Location], [Party]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[DirPartyLocation] TO [Eliant]
GO
GRANT SELECT ON  [dbo].[DirPartyLocation] TO [OH_ProductionPlanning]
GO
