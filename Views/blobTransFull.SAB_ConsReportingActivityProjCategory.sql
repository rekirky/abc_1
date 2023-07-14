create   view [blobTransFull].[SAB_ConsReportingActivityProjCategory] as select 
LSN,[CategoryRestriction]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsWBSCategoryRestriction' and e.EnumCode=t.[CategoryRestriction]) ,CategoryRestrictionEnumID=[CategoryRestriction]
,[CostCategory]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ReportingActivity]
 from blobFull.SAB_ConsReportingActivityProjCategory t
GO
