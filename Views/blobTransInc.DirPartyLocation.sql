create   view [blobTransInc].[DirPartyLocation] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[AttentionToAddressLine]
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
 from stage.DirPartyLocation t
GO
