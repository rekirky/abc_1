create   view [blobTransFull].[SAB_ConsResponsibility] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Restricted]=case when [Restricted]=1 then 'Yes' else 'No' end ,RestrictedFlag=cast([Restricted] as bit)
,[ShowVendor]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsResponsibilityShowVendor' and e.EnumCode=t.[ShowVendor]) ,ShowVendorEnumID=[ShowVendor]
 from blobFull.SAB_ConsResponsibility t
GO
