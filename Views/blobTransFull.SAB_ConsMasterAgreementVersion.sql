create   view [blobTransFull].[SAB_ConsMasterAgreementVersion] as select 
LSN,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[IsPrimary]=case when [IsPrimary]=1 then 'Yes' else 'No' end ,IsPrimaryFlag=cast([IsPrimary] as bit)
,[MasterAgreement]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Status]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsMasterAgreementStatus' and e.EnumCode=t.[Status]) ,StatusEnumID=[Status]
,[Version]
 from blobFull.SAB_ConsMasterAgreementVersion t
GO
