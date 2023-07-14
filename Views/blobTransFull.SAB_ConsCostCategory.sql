create   view [blobTransFull].[SAB_ConsCostCategory] as select 
LSN,[AccrualMethod]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsAccrualMethod' and e.EnumCode=t.[AccrualMethod]) ,AccrualMethodEnumID=[AccrualMethod]
,[CategoryGroup]
,[CategoryNumber]
,[CostCategoryAllocationDestination]
,[CSActive]=case when [CSActive]=1 then 'Yes' else 'No' end ,CSActiveFlag=cast([CSActive] as bit)
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[FieldPurchOrderContingencyCostCategory]
,[IntercompanyPostingType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsCategoryIntercompanyPostingType' and e.EnumCode=t.[IntercompanyPostingType]) ,IntercompanyPostingTypeEnumID=[IntercompanyPostingType]
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ReportType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsCategoryReportType' and e.EnumCode=t.[ReportType]) ,ReportTypeEnumID=[ReportType]
,[TaxItemGroup]
 from stage.SAB_ConsCostCategory t
GO
