create   view [blobTransFull].[SAB_ConsRevenueCategory] as select 
LSN,[AccrualMethod]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsAccrualMethod' and e.EnumCode=t.[AccrualMethod]) ,AccrualMethodEnumID=[AccrualMethod]
,[CategoryNumber]
,[DataLakeModified_DateTime]=cast([DataLakeModified_DateTime] as datetime2(0))
,[IntercompanyPostingType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsCategoryIntercompanyPostingType' and e.EnumCode=t.[IntercompanyPostingType]) ,IntercompanyPostingTypeEnumID=[IntercompanyPostingType]
,[Name]
,[PARTITION]
,[RECID]
,[RECVERSION]
,[ReportType]=(select top 1 e.Enum from dbo.Enum e where e.EnumSet='SAB_ConsCategoryReportType' and e.EnumCode=t.[ReportType]) ,ReportTypeEnumID=[ReportType]
,[RevenueCategoryAllocationDestination]
,[TaxItemGroup]
 from blobFull.SAB_ConsRevenueCategory t
GO
