create   view [blobTransFull].[LogisticsLocationRole] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DisableAddOrEditInEmployeeSelfService]
,[IsContactInfo]
,[IsPostalAddress]
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='LogisticsLocationRoleType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
 from blobFull.LogisticsLocationRole t
GO
