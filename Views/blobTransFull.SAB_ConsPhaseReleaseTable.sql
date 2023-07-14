create   view [blobTransFull].[SAB_ConsPhaseReleaseTable] as select 
LSN,[ActualReleaseDate]=cast([ActualReleaseDate] as date)
,[CREATEDDATETIME]=cast([CREATEDDATETIME] as date)
,[DataAreaId]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Description]
,[LotStructureElement]
,[LotStructureElementTo]
,[PARTITION]
,[PhaseReleaseId]
,[PlannedReleaseDate]=cast([PlannedReleaseDate] as date)
,[RECID]
,[RECVERSION]
,[ReleaseStatus]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsPhaseReleaseStatus' and e.EnumCode=t.[ReleaseStatus]) ,ReleaseStatusEnumID=[ReleaseStatus]
,[ScheduleGroupMode]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsPhaseReleaseScheduleGroupMode' and e.EnumCode=t.[ScheduleGroupMode]) ,ScheduleGroupModeEnumID=[ScheduleGroupMode]
 from blobFull.SAB_ConsPhaseReleaseTable t
GO
