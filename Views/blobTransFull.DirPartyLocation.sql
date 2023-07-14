create   view [blobTransFull].[DirPartyLocation] as select 
LSN,[AttentionToAddressLine]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[IsLocationOwner]
,[IsPostalAddress]
,[IsPrimary]
,[IsPrimaryTaxRegistration]
,[IsPrivate]
,[IsRoleBusiness]
,[IsRoleDelivery]
,[IsRoleHome]
,[IsRoleInvoice]
,[Location]
,[MODIFIEDBY]
,[PARTITION]
,[Party]
,[PostalAddressRoles]
,[RECID]
,[RECVERSION]
 from blobFull.DirPartyLocation t
GO
