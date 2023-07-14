create   view [blobTransFull].[SAB_ConsBuildingTypeTable] as select 
LSN,[ConsBuildingTypeDescription]
,[ConsBuildingTypeId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FromDate]=cast([FromDate] as date)
,[Inactive]=case when [Inactive]=1 then 'Yes' else 'No' end ,InactiveFlag=cast([Inactive] as bit)
,[PARTITION]
,[PlanDescription]
,[RECID]
,[RECVERSION]
,[Status]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsBuildingTypeStatus' and e.EnumCode=t.[Status]) ,StatusEnumID=[Status]
,[ToDate]=cast(case when [ToDate] < cast('1901-01-01' as date) or [ToDate] is null then '9000-01-01' else [ToDate] end as date)
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsBuildingTypeType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
 from blobFull.SAB_ConsBuildingTypeTable t
GO
