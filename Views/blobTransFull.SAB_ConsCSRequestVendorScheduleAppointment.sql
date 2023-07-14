create   view [blobTransFull].[SAB_ConsCSRequestVendorScheduleAppointment] as select 
LSN,[CompleteDateTime]=cast([CompleteDateTime] as date)
,[COMPLETEDATETIMETZID]
,[CREATEDBY]
,[CREATEDDATETIME]=cast(case when [CREATEDDATETIME] < cast('1901-01-01' as date) then null else dbo.fnConvertUtcStringToLocalDate([CREATEDDATETIME]) end as date)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FromDateTime]=cast([FromDateTime] as date)
,[FROMDATETIMETZID]
,[LineNumber]
,[MODIFIEDBY]
,[MODIFIEDDATETIME]=cast([MODIFIEDDATETIME] as date)
,[PARTITION]
,[PendingStatusReason]
,[RECID]
,[RECVERSION]
,[RequestVendorSchedule]
,[ScheduleContact]
,[Status]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsCSRequestVendorScheduleAppointmentStatus' and e.EnumCode=t.[Status]) ,StatusEnumID=[Status]
,[ToDateTime]=cast([ToDateTime] as date)
,[TODATETIMETZID]
 from stage.SAB_ConsCSRequestVendorScheduleAppointment t
GO
