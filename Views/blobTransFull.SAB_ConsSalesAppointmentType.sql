create   view [blobTransFull].[SAB_ConsSalesAppointmentType] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DefaultStatus]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsSalesOpportunityHistoryScheduleStatus' and e.EnumCode=t.[DefaultStatus]) ,DefaultStatusEnumID=[DefaultStatus]
,[Department]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsSalesAppointmentDepartment' and e.EnumCode=t.[Department]) ,DepartmentEnumID=[Department]
,[Duration]
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
 from blobFull.SAB_ConsSalesAppointmentType t
GO
