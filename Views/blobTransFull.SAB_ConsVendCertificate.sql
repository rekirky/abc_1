create   view [blobTransFull].[SAB_ConsVendCertificate] as select 
LSN,[Agency]
,[AgencyUnlisted]
,[CertificateNumber]
,[CertificateType]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataArea]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[InsuranceAmount]=cast([InsuranceAmount] as numeric(18,2))
,[Insurer]
,[InsurerUnlisted]
,[LotStructureElement]
,[Override]=case when [Override]=1 then 'Yes' else 'No' end ,OverrideFlag=cast([Override] as bit)
,[OverrideReason]
,[OverrideReviewDate]=cast([OverrideReviewDate] as date)
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ValidFrom]=cast([ValidFrom] as date)
,[ValidTo]=cast([ValidTo] as date)
,[Vendor]
 from blobFull.SAB_ConsVendCertificate t
GO
