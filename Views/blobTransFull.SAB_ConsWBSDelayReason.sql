create   view [blobTransFull].[SAB_ConsWBSDelayReason] as select 
LSN,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Impact]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsWBSDelayImpact' and e.EnumCode=t.[Impact]) ,ImpactEnumID=[Impact]
,[Name]
,[OH_ConsResponsibilityRecId]
,[OH_requireOwner]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsWBSDelayType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
 from blobFull.SAB_ConsWBSDelayReason t
GO
