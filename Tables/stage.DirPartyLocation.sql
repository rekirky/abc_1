CREATE TABLE [stage].[DirPartyLocation]
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
) ON [PRIMARY]
GO
