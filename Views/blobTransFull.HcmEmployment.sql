create   view [blobTransFull].[HcmEmployment] as select 
LSN,[CREATEDBY]
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DefaultDimension]
,[EEOEstablishment]
,[EmploymentId]
,[EmploymentType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='HcmEmploymentType' and e.EnumCode=t.[EmploymentType]) ,EmploymentTypeEnumID=[EmploymentType]
,[LegalEntity]
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ValidFrom]=cast([ValidFrom] as date)
,[VALIDFROMTZID]
,[ValidTo]=cast([ValidTo] as date)
,[VALIDTOTZID]
,[Worker]
 from blobFull.HcmEmployment t
GO
