create   view [blobTransInc].[SAB_ConsReportingActivityProjCategory] as select 
DML_Action,Start_LSN,Seq_Val,Instance,[CategoryRestriction]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsWBSCategoryRestriction' and e.EnumCode=t.[CategoryRestriction]) ,CategoryRestrictionEnumID=[CategoryRestriction]
,[CostCategory]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ReportingActivity]
 from stage.SAB_ConsReportingActivityProjCategory t
GO
