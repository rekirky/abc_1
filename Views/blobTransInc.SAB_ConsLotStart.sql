create   view [blobTransInc].[SAB_ConsLotStart] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[ChangeReason]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[ForecastStartDate]=cast(case when [ForecastStartDate] < cast('1901-01-01' as date) then null else [ForecastStartDate] end as date)
,[LotStart]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ReleaseGroup]
,[StartedDateTime]=cast(case when [StartedDateTime] < cast('1901-01-01' as date) then null else [StartedDateTime] end as date)
,[STARTEDDATETIMETZID]
,[Status]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsLotStartStatus' and e.EnumCode=t.[Status]) ,StatusEnumID=[Status]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsLotStartType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
 from stage.SAB_ConsLotStart t
GO
