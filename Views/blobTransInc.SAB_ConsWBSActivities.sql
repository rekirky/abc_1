create   view [blobTransInc].[SAB_ConsWBSActivities] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[ActivityNumber]
,[ActualEndDate]=cast(case when [ActualEndDate] < cast('1901-01-01' as date) then null else [ActualEndDate] end as date)
,[BudgetEndDate]=cast(case when [BudgetEndDate] < cast('1901-01-01' as date) then null else [BudgetEndDate] end as date)
,[BudgetStartDate]=cast(case when [BudgetStartDate] < cast('1901-01-01' as date) then null else [BudgetStartDate] end as date)
,[Closed]=case when [Closed]=1 then 'Yes' else 'No' end ,ClosedFlag=cast([Closed] as bit)
,[ConstructionPause]=case when [ConstructionPause]=1 then 'Yes' else 'No' end ,ConstructionPauseFlag=cast([ConstructionPause] as bit)
,[ConstructionPhase]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[DoneByWorker]
,[Duration]
,[DurationOrig]
,[FinancialInstance]
,[LatestStartDate]=cast(case when [LatestStartDate] < cast('1901-01-01' as date) then null else [LatestStartDate] end as date)
,[LockState]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsWBSActivityLockState' and e.EnumCode=t.[LockState]) ,LockStateEnumID=[LockState]
,[Milestone]=case when [Milestone]=1 then 'Yes' else 'No' end ,MilestoneFlag=cast([Milestone] as bit)
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ReleaseGroup]
,[ReportingActivity]
,[Responsibility]
,[SchedEndDate]=cast(case when [SchedEndDate] < cast('1901-01-01' as date) then null else [SchedEndDate] end as date)
,[SchedStartDate]=cast(case when [SchedStartDate] < cast('1901-01-01' as date) then null else [SchedStartDate] end as date)
,[SchedStartDateOrig]=cast(case when [SchedStartDateOrig] < cast('1901-01-01' as date) then null else [SchedStartDateOrig] end as date)
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsWBSActivityType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
 from stage.SAB_ConsWBSActivities t
GO
