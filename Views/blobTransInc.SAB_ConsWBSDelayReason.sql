create   view [blobTransInc].[SAB_ConsWBSDelayReason] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[Impact]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsWBSDelayImpact' and e.EnumCode=t.[Impact]) ,ImpactEnumID=[Impact]
,[Name]
,[OH_ConsResponsibilityRecId]
,[OH_requireOwner]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[Type]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsWBSDelayType' and e.EnumCode=t.[Type]) ,TypeEnumID=[Type]
 from stage.SAB_ConsWBSDelayReason t
GO
